<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WAPP_ASSIGNMENT.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Kids English World
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            
            width: 363px;
            height: 494px;
        }
        .auto-style7 {
            height: 296px;
            width: 444px;
            margin-left: 39;
            margin-top: 33;
        }
        .auto-style8 {
            width: 92%;
            height: 94px;
            margin-left: 44px;
        }
        .auto-style9 {
            width: 120px;
        }
        .auto-style10 {
            width: 120px;
            height: 31px;
        }
        .auto-style11 {
            height: 31px;
            width: 168px;
        }
        .auto-style12 {
            width: 96%;
        }
        .auto-style13 {
            width: 168px;
        }
        .auto-style14 {
            width: 120px;
            height: 51px;
        }
        .auto-style15 {
            width: 168px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentbody1" runat="server">
    <div class="auto-style7" style="border: thin groove #FFFFFF;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Login"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style8">
            <tr>
                <td class="auto-style10">Email</td>
                <td class="auto-style11">
                        <asp:TextBox ID="KLoginEmail" runat="server" BackColor="Transparent" BorderColor="White" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="KLoginEmail" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>

                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="KLoginEmail" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>

                    </td>
            </tr>
            <tr>
                <td class="auto-style14">Password</td>
                <td class="auto-style15">
                        <asp:TextBox ID="KLoginPwd" runat="server" BackColor="Transparent" BorderColor="White" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="KLoginPwd" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style9"><asp:Label ID="errorMsg" runat="server" Visible="False" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style12">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="LOG IN" OnClick="Button1_Click" BackColor="Transparent" ForeColor="White" BorderColor="White" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Not  KidsEnglishWorld Member?"></asp:Label>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Create Account</asp:LinkButton>
                    </td>
            </tr>
        </table>
    </div>
</asp:Content>
