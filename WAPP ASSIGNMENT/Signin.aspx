<%@ Page Title="" Language="C#" MasterPageFile="~/Signin.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="WAPP_ASSIGNMENT.Signin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('background (1).jpg'); height: 710px; width: 1510px;"">
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="REGISTER NOW TO KIDS ENGLISH WORLD!"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <div style="height: 420px; width: 736px; margin-left: 73px"> &nbsp;<br />
            <table style="width: 87%">
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KFname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KLname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px; height: 26px">
                        <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td style="height: 26px">
                        <asp:TextBox ID="KUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label5" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="gender" runat="server">
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="country" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="KPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="Label10" runat="server" Text="Level"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="KLevel" runat="server">
                            <asp:ListItem>BEGINNER</asp:ListItem>
                            <asp:ListItem>INTERMEDIATE</asp:ListItem>
                            <asp:ListItem>ADVANCED</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">
                        <asp:Label ID="id" runat="server" Text="Id" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="errMsg" runat="server" Text="error" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="member" runat="server" Text="member" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 301px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Create Account" OnClick="Button1_Click1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </div>
</asp:Content>

