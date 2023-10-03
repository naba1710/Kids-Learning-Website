<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="REGISTRATION.aspx.cs" Inherits="WAPP_ASSIGNMENT.REGISTRATION" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Kids English World
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 411px;
        height: 502px;
        margin-right: 44px;
        margin-top: 0px;
    }
    .auto-style9 {
        width: 102%;
    }
    .auto-style10 {
        width: 119px;
    }
    .auto-style11 {
        width: 171px;
    }
    .auto-style16 {
        width: 119px;
        height: 52px;
    }
    .auto-style17 {
        width: 171px;
        height: 52px;
    }
    .auto-style18 {
        width: 119px;
        height: 53px;
    }
    .auto-style19 {
        width: 171px;
        height: 53px;
    }
    .auto-style20 {
        width: 119px;
        height: 51px;
    }
    .auto-style21 {
        width: 171px;
        height: 51px;
    }
    .auto-style22 {
        width: 119px;
        height: 40px;
    }
    .auto-style23 {
        width: 171px;
        height: 40px;
    }
    .auto-style24 {
        width: 119px;
        height: 41px;
    }
    .auto-style25 {
        width: 171px;
        height: 41px;
    }
    .auto-style26 {
        width: 119px;
        height: 9px;
    }
    .auto-style27 {
        width: 171px;
        height: 9px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
            <p>
    <img alt="" class="auto-style7" src="Picture1.png" /></p>
            </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentbody1" runat="server">
            <table class="auto-style9">
    <tr>
        <td class="auto-style16">First Name</td>
        <td class="auto-style17">
                        <asp:TextBox ID="KFname" runat="server" BackColor="Transparent" Width="154px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="KFname" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style18">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
        <td class="auto-style19">
                        <asp:TextBox ID="KLname" runat="server" BackColor="Transparent" Width="153px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="KLname" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                    </td>
        <td class="auto-style17">
                        <asp:TextBox ID="KUsername" runat="server" BackColor="Transparent" Width="148px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="KUsername" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style20">
                        <asp:Label ID="Label4" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
        <td class="auto-style21">
                        <asp:TextBox ID="KAge" runat="server" BackColor="Transparent" Width="151px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="KAge" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style20">
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
        <td class="auto-style21">
                        <asp:DropDownList ID="gender" runat="server" BackColor="Transparent">
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="gender" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style20">
                        <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
                    </td>
        <td class="auto-style21">
                        <asp:TextBox ID="country" runat="server" BackColor="Transparent" Width="146px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="country" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style18">
                        <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                    </td>
        <td class="auto-style19">
                        <asp:TextBox ID="KEmail" runat="server" BackColor="Transparent" Width="147px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="KEmail" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="KEmail" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style22">
                        <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                    </td>
        <td class="auto-style23">
                        <asp:TextBox ID="KPassword" runat="server" BackColor="Transparent" Width="152px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="KPassword" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style24">
                        <asp:Label ID="Label9" runat="server" Text="Level"></asp:Label>
                    </td>
        <td class="auto-style25">
                        <asp:DropDownList ID="KLevel" runat="server" BackColor="Transparent">
                            <asp:ListItem>BEGINNER</asp:ListItem>
                            <asp:ListItem>INTERMEDIATE</asp:ListItem>
                            <asp:ListItem>ADVANCED</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="KLevel" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="auto-style26">
                        <asp:Label ID="errMsg" runat="server" Text="error" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="member" runat="server" Text="member" Visible="False"></asp:Label>
                    </td>
        <td class="auto-style27">
            <asp:Label ID="Label10" runat="server" Text="."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
                        <asp:Label ID="id" runat="server" Text="Id" Visible="False"></asp:Label>
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click1" BackColor="Transparent" BorderColor="White" ForeColor="White" />
                    </td>
        <td class="auto-style11">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT registeration.fname,registeration.lname, registeration.uname, registeration.Age,registeration.Email, registeration.pwd,Quiz.Level
FROM registeration INNER JOIN
Quiz ON registeration.Id = Quiz.StudentID"></asp:SqlDataSource>
                    </td>
    </tr>
</table>
            </asp:Content>



