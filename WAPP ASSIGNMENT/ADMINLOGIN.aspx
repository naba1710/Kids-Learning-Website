<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMINLOGIN.aspx.cs" Inherits="WAPP_ASSIGNMENT.ADMINLOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Admin Login KEW
    </title>
    <style type="text/css">
        body {
            background-color: orange
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 161px;
        }
        .auto-style4 {
            height: 26px;
            width: 161px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Admin Login Page" ForeColor="White"></asp:Label>
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Username" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="username" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="password" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="Transparent" BorderColor="White" ForeColor="White" />
                </td>
                <td><asp:Label ID="Label4" runat="server" Text="."></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [adminlogin]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><asp:Label ID="errorMsg" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
