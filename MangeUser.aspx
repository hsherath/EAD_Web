<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MangeUser.aspx.cs" Inherits="EAD_Web.MangeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 140px;
        }
        .style2
        {
            width: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    find User</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnFind" runat="server" Text="find" Width="56px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    First Name</td>
                <td class="style2">
                    <asp:TextBox ID="txtEfirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Last Name</td>
                <td class="style2">
                    <asp:TextBox ID="txtElastName" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Email</td>
                <td class="style2">
                    <asp:TextBox ID="txtEemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Primary Address</td>
                <td class="style2">
                    <asp:TextBox ID="txtEaddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    User Name</td>
                <td class="style2">
                    <asp:TextBox ID="txtEuserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Position</td>
                <td class="style2">
                    <asp:DropDownList ID="ddlEposition" runat="server">
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Software Engineer</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>QA Engineer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Salary</td>
                <td class="style2">
                    <asp:TextBox ID="txtEsalary" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Bank Account Number</td>
                <td class="style2">
                    <asp:TextBox ID="txtEbanNo" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnEdite" runat="server" Text="Edit" />
&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
