<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #000000;
        }
        .auto-style2 {
            margin-left: 280px;
        }
        .auto-style3 {
            width: 129px;
        }
        .auto-style4 {
            width: 60px;
        }
        .auto-style5 {
            width: 394px;
        }
        .auto-style6 {
            width: 63px;
        }
        .auto-style7 {
            width: 60px;
            height: 25px;
        }
        .auto-style8 {
            width: 129px;
            height: 25px;
        }
        .auto-style9 {
            width: 63px;
            height: 25px;
        }
        .auto-style10 {
            width: 394px;
            height: 25px;
        }
        .auto-style11 {
            width: 60px;
            height: 45px;
        }
        .auto-style12 {
            width: 129px;
            height: 45px;
        }
        .auto-style13 {
            width: 63px;
            height: 45px;
        }
        .auto-style14 {
            width: 394px;
            height: 45px;
        }
        .auto-style15 {
            width: 60px;
            height: 34px;
        }
        .auto-style16 {
            width: 129px;
            height: 34px;
        }
        .auto-style17 {
            width: 63px;
            height: 34px;
        }
        .auto-style18 {
            width: 394px;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="REGISTRATION PAGE"></asp:Label>
        </div>
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    UserId</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_u_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txt_name" runat="server" OnTextChanged="txt_name_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_mobno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style13"></td>
                <td id="txt_c_pwd" class="auto-style14">
                    <asp:TextBox ID="txt_c_pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label8" runat="server" Text="Area"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txt_area" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SignUp" />
                </td>
                <td class="auto-style18">
                    <input id="Reset1" type="reset" value="Reset" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
