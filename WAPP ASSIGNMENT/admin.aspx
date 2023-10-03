<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WAPP_ASSIGNMENT.admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="admin.css" rel="stylesheet" type="text/css" />
    <title>Admin Panel Kids English World</title>
    <style type="text/css">

        .auto-style1 {
            width: 43%;
            margin-left: 581px;
        }
        .auto-style5 {
            width: 284px;
        }
    </style>
</head>
<body link = "white">
    <form id="form1" runat="server">
    <div class="side-menu">
        <div class="brand-name">
            <h1>Admin Panel</h1>
        </div>
        <ul>
            <li><a href="admin.aspx"><img src="reading-book (1).png"  alt="" />&nbsp; Students Profile</a></li>
            
            <li><a href="editprofileadmin.aspx"><img src="settings.png" alt="" />&nbsp; Edit Students Profile</a></li>
            <li><a href="KIDSLANDING.aspx">Logout</a></li>
        </ul>
    </div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Students Profile" Font-Size="XX-Large" ForeColor="#3333CC"></asp:Label>
                    <br />
&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="671px" Width="659px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
                            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                            <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT registeration.fname, registeration.lname, registeration.uname, registeration.Age, registeration.Email, registeration.pwd, registeration.gender, registeration.Country, Quiz.Level FROM registeration INNER JOIN Quiz ON registeration.Id = Quiz.StudentID"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
                &nbsp;
    </form>

</body>
</html>


