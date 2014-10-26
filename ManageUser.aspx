<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="EAD_Web.ManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="login_name" HeaderText="login_name" 
                    SortExpression="login_name" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" 
                    SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" 
                    SortExpression="lastname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="salary" HeaderText="salary" 
                    SortExpression="salary" />
                <asp:BoundField DataField="position" HeaderText="position" 
                    SortExpression="position" />
                <asp:BoundField DataField="primary_address" HeaderText="primary_address" 
                    SortExpression="primary_address" />
                <asp:BoundField DataField="bank_account_number" 
                    HeaderText="bank_account_number" SortExpression="bank_account_number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:itplabConnectionString %>" 
            SelectCommand="SELECT [login_name], [firstname], [lastname], [email], [salary], [position], [primary_address], [bank_account_number] FROM [EAD_users]">
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
