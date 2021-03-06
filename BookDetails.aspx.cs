﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl.Text = "Book Id  : " + Session["id"];
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Name from Authors a join BookAuth ba ON a.Author_id = ba.Author_id " +
                "where Book_id = @Book_id;";
            cmd.Parameters.AddWithValue("@Book_id", Session["id"]);

            cn.Open();
            SqlDataReader drEmps = cmd.ExecuteReader();
            List<string> authors = new List<string>();
            while (drEmps.Read())
            {
                authors.Add(drEmps["Name"].ToString());
            }

            drEmps.Close();
            
            string authorList = "";
            foreach(string author in authors)
            {
                authorList += author + ",";
            }
            lbl2.Text = authorList;

            //For Owner
            cmd.CommandText = "select Name, Email, Mobileno from UserInfo u join Books b on b.User_id = u.User_id " +
                "where Book_id = @Bookid;";
            cmd.Parameters.AddWithValue("@Bookid", Session["id"]);

            drEmps = cmd.ExecuteReader();
            
            while (drEmps.Read())
            {
                lbl5.Text = drEmps["Name"].ToString();
                lbl3.Text = drEmps["Email"].ToString();
                lbl4.Text = drEmps["Mobileno"].ToString();
            }

            drEmps.Close();
            cn.Close();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDb)\MSSqlLocalDb;Initial Catalog=Suraj;Integrated Security=True;Pooling=False";

            SqlCommand cmdgrid = new SqlCommand();
            cmdgrid.Connection = con;
            cmdgrid.CommandType = CommandType.Text;
            cmdgrid.CommandText = "select Pic ,Title,Original_price,Selling_price, No_of_pages,Publication, Category, Exchange,Status_book from Books where Book_id = @Bookid1;";
            cmdgrid.Parameters.AddWithValue("@Bookid1", Session["id"]);
            con.Open();

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmdgrid;
            DataSet ds = new DataSet();
            sda.Fill(ds, "Books");
            GridView1.DataSource = ds.Tables["Books"];
            GridView1.DataBind();

        }

    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;
            string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Pic"]);
            (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;

        }
    }
}