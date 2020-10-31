<%@ Page Title="顧客一覧" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="CustomerAction.CustomerList" %>
<%--参考書の位置No.141までを実装している(2020/10/31現在)--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 800px;
        }
        .auto-style3 {
            width: 65px;
        }
        .auto-style4 {
            width: 40px;
        }
        .auto-style5 {
            width: 160px;
        }
        .auto-style6 {
            width: 130px;
        }
        .auto-style7 {
            width: 115px;
        }
        .auto-style8 {
            width: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:customer_actionConnectionString %>" SelectCommand="SELECT [customerID], [customer_name], [customer_kana], [section], [post], [company_name], [staff_name] FROM [vw_customer_view]"></asp:SqlDataSource>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">顧客一覧</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
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
