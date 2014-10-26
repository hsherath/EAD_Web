<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="EAD_Web.Add_User_New" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<form>
     <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label">First Name </asp:Label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgFirstName" runat="server" Text=""></asp:Label>
                </td>
            </tr>

            <tr>
                <td>
                    Last Name</td>
                
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgLastName" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Email Address</td>
                
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                   <asp:Label ID="msgEmail" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Primary Address</td>
                
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgAddress" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    User Name</td>
                
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgUserName" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Password
                </td>
                
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgPassword" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Confirm Password</td>
                
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                   <asp:Label ID="msgConfirmPassword" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Position</td>
                
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Software Engineer</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>QA Engineer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="msgPosition" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Salary</td>
                
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgSalary" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    NIC</td>
                
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgNIC" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td>
                    Bank Account Number</td>
                
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgAccountNo" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr> <td></td></tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" 
                        Width="62px" /></td>
                <td></td>
            </tr>
        </table>
    </div>
</form>

</asp:Content>
