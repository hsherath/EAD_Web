<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="EAD_Web.AdddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            color: #0066FF;
            font-weight: bold;
            font-size: medium;
        }
        .style2
        {
            width: 144px;
            font-weight: 700;
        }
        .style3
        {
            width: 330px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <p class="style1">
        Add New Employer</p>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" 
                        style="font-style: italic; font-weight: 700" Text="Find"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlFind" runat="server" Height="16px" Width="127px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Text="Search" />
                </td>
                <td>
                    &nbsp;</td>
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
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                        Text="Login Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtElogin" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                        Text="First Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtEfname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Last Name"></asp:Label>
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
                    <asp:Label ID="Label9" runat="server" Text="NIC"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Position"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="ddlPosition" runat="server" Height="16px" Width="123px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style3">
                    <textarea id="txtEaddr" cols="20" name="S1" rows="2"></textarea></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" Text="Bank Account Number"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" />
&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>
