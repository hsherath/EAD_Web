<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindUser.aspx.cs" Inherits="EAD_Web.FindUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
       
        <div>
         <asp:Label ID="Label1" runat="server" Text="Label">Enter First Name : </asp:Label>
         <asp:TextBox ID="txtSearch"  CssClass="textEntry" runat="server"></asp:TextBox>
         <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click"/>
        </div>
        
          
        
           
    
    <br />
        <asp:Label ID="msgLabel" runat="server"></asp:Label>
        <br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="ead_assignment3_datasource" ForeColor="#333333" 
            GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="firstname" HeaderText="First Name" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="Last Name" 
                SortExpression="lastname" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="primary_address" HeaderText="Address" 
                SortExpression="primary_address" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

        <asp:SqlDataSource ID="ead_assignment3_datasource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EAD_DEMOConnectionString %>" 
            SelectCommand="SELECT [firstname], [lastname], [email], [primary_address] FROM [users]">
        </asp:SqlDataSource>
    
    
    </form>

    </asp:Content>
