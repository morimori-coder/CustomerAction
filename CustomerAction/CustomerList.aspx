<%@ Page Title="顧客一覧" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="CustomerAction.CustomerList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:customer_actionConnectionString %>" SelectCommand="SELECT [customerID], [customer_name], [customer_kana], [section], [post], [company_name], [staff_name] FROM [vw_customer_view]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="customerID" HeaderText="顧客ID" ReadOnly="True" SortExpression="customerID">
            <ItemStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="顧客名" SortExpression="customer_name">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_kana" HeaderText="顧客名カナ" SortExpression="customer_kana">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="company_name" HeaderText="会社名" ReadOnly="True" SortExpression="company_name">
            <ItemStyle Width="160px" />
            </asp:BoundField>
            <asp:BoundField DataField="section" HeaderText="部署名" SortExpression="section">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="post" HeaderText="役職" SortExpression="post">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="staff_name" HeaderText="営業担当者" SortExpression="staff_name">
            <ItemStyle Width="100px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
</asp:Content>
