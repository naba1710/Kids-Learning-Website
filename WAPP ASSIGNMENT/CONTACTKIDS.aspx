<%@ Page Title="" Language="C#" MasterPageFile="~/KIDSMASTER.Master" AutoEventWireup="true" CodeBehind="CONTACTKIDS.aspx.cs" Inherits="MASTER.CONTACTKIDS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Kids English World
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 424px;
    }
    .auto-style4 {
        height: 247px;
        width: 998px;
    }
        .auto-style6 {
            width: 408px;
            height: 152px;
        }
        .auto-style7 {
            width: 105px;
            height: 41px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 134px;
        }
        .auto-style11 {
            width: 134px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
            width: 346px;
        }
        .auto-style13 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <div class="auto-style4" style="background-image: url('contact (2).png')">
</div>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="Contentbody1">
                <br />
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style13">
                    <asp:TextBox ID="CName" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CName" ErrorMessage="Name is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style13">
                    <asp:TextBox ID="CEmail" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CEmail" ErrorMessage="Email is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label3" runat="server" Text="Contact No"></asp:Label>
                        </td>
                        <td class="auto-style12">
                    <asp:TextBox ID="CContact" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CContact" ErrorMessage="Contact is Required " ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label4" runat="server" Text="Country"></asp:Label>
                        </td>
                        <td class="auto-style12">
                    <asp:TextBox ID="CCountry" runat="server" BackColor="Transparent" BorderColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click1" />
        &nbsp;<asp:Label ID="errMsg" runat="server" Text="error" Visible="False" Font-Size="Smaller"></asp:Label>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contact]"></asp:SqlDataSource>
        </div>
                    </asp:Content>

