<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="WAPP_ASSIGNMENT.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>
        Kids English World
    </title>
   <link href="BEGINNER.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 191px;
            height: 152px;
        }

        .auto-style2 {
            width: 50px;
            height: 41px;
        }

        h1 {
            font-family: Snap ITC;
            font-color: red;
        }

        table {
            font-family: Arial;
            font-size: 15px border-collapse: collapse;
            width: 50%;
        }

        td, th {
            
            text-align: left;
            
            font-size: 30px;
    }
        td, th {
            
            background-color: white;
            
    
    }
        .auto-style15 {
            height: 780px;
        }
        .auto-style19 {
            width: 576px;
            height: 76px;
            margin-left: 151px;
        }
        .auto-style20 {
            height: 478px;
        }
            
    
    </style>
    </head>


    <body style="height: 543px">
        <div class="header">
            <img src="LOGO.jpg" class="auto-style1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />

        </div>
        <form id="form1" runat="server" class="auto-style3">
            <div class="wrapper">
                <div class="menu">
                    <ul>
                        <li><a href="homelogin.html"><img src="home.png" class="auto-style2" /></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropbtn">TOPICS</a>
                            <div class="dropdown-content">
                                <a href="fruits.html">INTERMEDIATE</a>
                                <ul>
                                    <li>

                                        <a href="Alphabets.html">ALPHABETS</a>
                                        <a href="colours.html">COLOURS</a>
                                    </li>
                                </ul>

                                <a href="index.html">INTERMEDIATE</a>
                                <ul>
                                    <li>
                                        <a href="fruits.html">FRUITS</a>
                                        <a href="daysoftheweek.html">DAYS OF THE WEEK</a>
                                    </li>
                                </ul>
                                <a href="#">ADVANCED</a>
                                <ul>
                                    <li>
                                        <a href="animals.html">ANIMALS</a>
                                        <a href="furniture.html">FURNITURES</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="WATCHVIDEOS.html">WATCH VIDEO</a></li>
                        <li><a href="MyProfile.aspx">MY PROFILE</a></li>
                        <li><a href="feedback.aspx">COMMENT SECTION</a></li>
                        <li><a href="QUIZ.html">GIFT MAN</a></li>
                        <li><a href="KIDSLANDING.aspx">LOGOUT</a></li>
                    </ul>
                    <p>
                        &nbsp;
                    </p>
                </div>

                <div class="auto-style15">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Font-Size="XX-Large" Text="My Profile"></asp:Label>
                    <br />
                    <br />
                    <br />
            <table class="auto-style20">
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Text="First Name" Font-Size="X-Small" Font-Names="Arial Black"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="KFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="KFname" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="KLname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label4" runat="server" Text="Date Of Birth" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="KAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label5" runat="server" Text="Gender" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:DropDownList ID="gender" runat="server" OnSelectedIndexChanged="gender_SelectedIndexChanged">
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label6" runat="server" Text="Country" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="country" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label7" runat="server" Text="Email" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="KEmail" runat="server"></asp:TextBox>
                        <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="KEmail" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300" Font-Size="XX-Small"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label8" runat="server" Text="Password" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="KPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label9" runat="server" Text="Level" Font-Names="Arial Black" Font-Size="X-Small"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        <asp:DropDownList ID="KLevel" runat="server">
                            <asp:ListItem>BEGINNER</asp:ListItem>
                            <asp:ListItem>INTERMEDIATE</asp:ListItem>
                            <asp:ListItem>ADVANCED</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
                    <div class="auto-style19">
                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click1" />
                        <br />
                    <asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="usertype" runat="server" Text="member" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="id" runat="server"></asp:Label>
                        </form>
                    </div>
                </div>
            </div>