<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="EAD_Web.Add_User_New" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 128px;
        }
        .style2
        {
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <form>
     <div>
        <table style="width: 100%;">
            
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Label">First Name </asp:Label>
                </td>
                
                <td class="style1">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgFirstName" runat="server" Text=""></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="style2">
                    Last Name</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgLastName" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td class="style2">
                    Email Address</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                   <asp:Label ID="msgEmail" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td class="style2">
                    Primary Address</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgAddress" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td class="style2">
                    User Name</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUserName" ErrorMessage="Login name is required." 
                        ForeColor="Red" ValidationGroup="adduservalidationgroup"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2">
                    Password
                </td>
                
                <td class="style1">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Password is required" 
                        ForeColor="Red" ValidationGroup="adduservalidationgroup"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2">
                    Confirm Password</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                        ErrorMessage="Passwords do not match" ForeColor="Red" 
                        ValueToCompare="adduservalidationgroup"></asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td class="style2">
                    Position</td>
                
                <td class="style1">
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
                <td class="style2">
                    Salary</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgSalary" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td class="style2">
                    NIC</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtNic" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgNIC" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td class="style2">
                    Bank Account Number</td>
                
                <td class="style1">
                    <asp:TextBox ID="txtBankAccount" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="msgAccountNo" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr> <td class="style2"></td></tr>

            <tr>
                <td class="style2"></td>
                <td class="style1">
                    <asp:Button ID="btnAddUser" runat="server" Text="Save" 
                        Width="62px" onclick="btnAddUser_Click" 
                        ValidationGroup="adduservalidationgroup" /></td>
                <td></td>
            </tr>
        </table>
    </div>
</form> 

</asp:Content>
