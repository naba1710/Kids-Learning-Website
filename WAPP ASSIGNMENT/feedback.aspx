<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WAPP_ASSIGNMENT.feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
            font-family: Snap ITC;
            font-size: 15px border-collapse: collapse;
            width: 50%;
        }

        td, th {
            
            text-align: left;
            
            font-size: 30px;
    }
        .auto-style4 {
            width: 200px;
        }
        .auto-style7 {
            width: 29px;
            height: 41px;
        }
        .auto-style8 {
            width: 129px;
            height: 39px;
        }
        .auto-style10 {
            margin-left: 3px;
            width: 47%;
            height: 270px;
        }
        .auto-style11 {
            width: 696px;
            height: 41px;
        }
        .auto-style12 {
            width: 349px;
            height: 239px;
            margin-left: 413px;
        }
        td, th {
            
            background-color: beige;
            
    
    }
        .auto-style13 {
            height: 1178px;
        }
        .auto-style14 {
            width: 696px;
            height: 39px;
        }
            
        
    
        .auto-style15 {
            width: 237px;
            margin-left: 353px;
        }
            
        
    
    </style>


    <body style="height: 543px">
        <div class="header">
            <img src="LOGO.jpg" class="auto-style1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />

        </div>
        <form id="form2" runat="server" class="auto-style13">
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
            </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" class="auto-style12" src="kid.gif" /></p>
            <p>
            <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Please leave your comment here"></asp:Label>
            &nbsp;&nbsp;&nbsp; </p>
        <table align="center" class="auto-style10">

            <tr>
                <td class="auto-style7">
                                       <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style4">
                                       <asp:TextBox ID="name" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Email" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is Required " ForeColor="#FF3300" Font-Names="Arial" Font-Size="Medium">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300" Font-Names="Arial" Font-Size="Smaller"></asp:RegularExpressionValidator>

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Comment" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" BorderColor="White" Height="34px" Width="454px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email is Required " ForeColor="#FF3300" Font-Names="Arial" Font-Size="Medium">*</asp:RequiredFieldValidator>

                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Send" BackColor="#FF9900" BorderColor="#FF9900" ForeColor="White" OnClick="Button1_Click1" />
                </td>
            </tr>
        </table>
            <div class="auto-style15">
                        <asp:Label ID="errMsg" runat="server" Text="error" Visible="False" Font-Size="Smaller" Font-Names="Arial"></asp:Label>
                </div>
&nbsp;
    </form>
</body>
</html>
