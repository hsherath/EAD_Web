<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="EAD_Web.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Log In
    </h2>
    <p>
        Please enter your username and password.
       
      <form  runat=server>
      <fieldset class="login">
      <label>Username</label>
      <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
      
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="Username can not be empty" ControlToValidate="txtUsername" 
              ForeColor="Red"></asp:RequiredFieldValidator>
      
      <label >Password</label>
          <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Password can not be empty" ControlToValidate="txtPassword" 
              ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:Button  runat="server" ID="btnLogin" CssClass="submitButton" Text="Login" 
              onclick="btnLogin_Click"/>
          
      </fieldset>
      </form>
      
</asp:Content>
