<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CONTACT.aspx.cs" Inherits="WAPP_ASSIGNMENT.CONTACT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 26%;
        }
        .auto-style2 {
            width: 150px;
        }
    </style>
</head>
<body style="width: 1130px">
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="CName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="CEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact no</td>
                <td>
                    <asp:TextBox ID="CContact" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Country</td>
                <td>
                    <asp:TextBox ID="CCountry" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Send" />
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contact]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
