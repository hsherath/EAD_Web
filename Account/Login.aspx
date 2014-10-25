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
      <label for="username">Username</label>
      <asp:TextBox ID="username" CssClass="textEntry " MaxLength="40" runat="server"></asp:TextBox>
      <label for="password">Password</label>
      <asp:TextBox ID="password" CssClass="textEntry inline" MaxLength="40" runat="server"></asp:TextBox>
      <asp:Button  runat="server" ID="btnLogin" CssClass="submitButton" Text="Login" 
              onclick="btnLogin_Click"/>
      </fieldset>
      </form>
      
</asp:Content>
