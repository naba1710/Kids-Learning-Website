<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReadPage.aspx.cs" Inherits="WAPP_ASSIGNMENT.AdminReadPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 576px;
            height: 190px;
            margin-left: 346px;
            margin-top: 0px;
        }
        .auto-style1 {
            width: 5%;
            margin-left: 331px;
        }
        .auto-style5 {
            width: 231px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Read Users Data"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="104px" Width="174px">
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
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT registeration.fname, registeration.lname, registeration.uname, registeration.Age, registeration.Email, registeration.pwd, registeration.gender, registeration.Country, Quiz.Level FROM registeration INNER JOIN Quiz ON registeration.Id = Quiz.StudentID"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
                &nbsp;<br />
                <div class="auto-style3">
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
