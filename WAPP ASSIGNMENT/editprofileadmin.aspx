<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editprofileadmin.aspx.cs" Inherits="WAPP_ASSIGNMENT.editprofileadmin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="admin.css" rel="stylesheet" type="text/css" />
    <title>Admin Pannel Kids English World</title>
    <style type="text/css">

        .auto-style5 {
            width: 596px;
            margin-left: 458px;
        }
    
        .auto-style2 {
            width: 212px;
        }
        .auto-style3 {
            width: 212px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style6 {
            width: 597px;
            margin-left: 457px;
        }
    </style>
</head>
<body link = "white">
    <form id="form1" runat="server">
    <div class="side-menu">
        <div class="brand-name">
            <h1>Admin Pannel</h1>
        </div>
        <ul>
            <li><a href="admin.aspx"><img src="reading-book (1).png"  alt="" />&nbsp; Students Profile</a></li>
            
            <li><a href="editprofileadmin.aspx"><img src="settings.png" alt="" />&nbsp; Edit Students Profile</a></li>
            <li><a href="KIDSLANDING.aspx">Logout</a></li>
            
        </ul>
    </div>
        <div>
        </div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Username" ForeColor="Black"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="username" runat="server" AutoPostBack="True" OnSelectedIndexChanged="username_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="KFname" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KLname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="KLname" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="KAge" runat="server" Height="16px" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="KAge" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="gender" runat="server" OnSelectedIndexChanged="gender_SelectedIndexChanged">
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="country" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="country" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="KEmail" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="KEmail" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="KPassword" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Level"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="KLevel" runat="server">
                            <asp:ListItem>BEGINNER</asp:ListItem>
                            <asp:ListItem>INTERMEDIATE</asp:ListItem>
                            <asp:ListItem>ADVANCED</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        <table class="auto-style5">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Remove" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="errMsg" runat="server" Text="errMsg"></asp:Label>
                    &nbsp;
                    <asp:Label ID="id" runat="server" Text="id"></asp:Label>
                    &nbsp;<asp:Label ID="member" runat="server" Text="member"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
