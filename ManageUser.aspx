<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="EAD_Web.ManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 118px;
        }
        .style3
        {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    find</td>
                <td class="style3">
                    <asp:DropDownList ID="ddlFind" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
&nbsp;
                    <asp:Button ID="btnFind" runat="server" Text="Search" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Login Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtElogin" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtEfname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtElname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtEemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtEsalary" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Position"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlEposition" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style3">
                    <textarea id="txtEaddr" cols="20" name="S1" rows="2"></textarea></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Bamk Ac."></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtEbank" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" Width="51px" />
&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
