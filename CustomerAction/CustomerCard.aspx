﻿<%@ Page Title="顧客情報" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerCard.aspx.cs" Inherits="CustomerAction.CustomerCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 800px;
            border-collapse: collapse;
        }
        .tableStyle1 {
            background-color: Tan;
            border: 1px solid Black;
            width: 130px;
        }
        .tableStyle2 {
            background-color: LightGoldenrodYellow;
            border: 1px solid Black;
            width: 267px;
        }
        .auto-style3 {
            background-color: Tan;
            border: 1px solid Black;
            width: 130px;
            height: 16px;
        }
        .auto-style5 {
            background-color: LightGoldenrodYellow;
            border: 1px solid Black;
        }
        .auto-style6 {
            width: 665px;
        }
        .auto-style7 {
            background-color: LightGoldenrodYellow;
            border: 1px solid Black;
            width: 267px;
            height: 16px;
        }
        .auto-style8 {
            background-color: Tan;
            border: 1px solid Black;
            width: 130px;
            height: 15px;
        }
        .auto-style9 {
            background-color: LightGoldenrodYellow;
            border: 1px solid Black;
            width: 267px;
            height: 15px;
        }
        .auto-style10 {
            background-color: Tan;
            border: 1px solid Black;
            width: 130px;
            height: 22px;
        }
        .auto-style11 {
            background-color: LightGoldenrodYellow;
            border: 1px solid Black;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:customer_actionConnectionString %>" DeleteCommand="DELETE FROM [tbl_customer] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [tbl_customer] ([customerID], [customer_name], [customer_kana], [companyID], [section], [post], [zipcode], [address], [tel], [staffID], [first_action_date], [memo], [input_date], [input_staff_name], [update_date], [update_staff_name], [delete_flag]) VALUES (@customerID, @customer_name, @customer_kana, @companyID, @section, @post, @zipcode, @address, @tel, @staffID, @first_action_date, @memo, @input_date, @input_staff_name, @update_date, @update_staff_name, @delete_flag)" SelectCommand="SELECT * FROM [vw_customer_view] WHERE customerID = @customerID" UpdateCommand="UPDATE [tbl_customer] SET [customer_name] = @customer_name, [customer_kana] = @customer_kana, [companyID] = @companyID, [section] = @section, [post] = @post, [zipcode] = @zipcode, [address] = @address, [tel] = @tel, [staffID] = @staffID, [first_action_date] = @first_action_date, [memo] = @memo,  [update_date] = @update_date, [update_staff_name] = @update_staff_name, [delete_flag] = @delete_flag WHERE [customerID] = @customerID">
        <DeleteParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="customer_name" Type="String" />
            <asp:Parameter Name="customer_kana" Type="String" />
            <asp:Parameter Name="companyID" Type="Int32" />
            <asp:Parameter Name="section" Type="String" />
            <asp:Parameter Name="post" Type="String" />
            <asp:Parameter Name="zipcode" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="staffID" Type="Int32" />
            <asp:Parameter Name="first_action_date" Type="DateTime" />
            <asp:Parameter Name="memo" Type="String" />
            <asp:Parameter Name="input_date" Type="DateTime" />
            <asp:Parameter Name="input_staff_name" Type="String" />
            <asp:Parameter Name="update_date" Type="DateTime" />
            <asp:Parameter Name="update_staff_name" Type="String" />
            <asp:Parameter Name="delete_flag" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="customerID" QueryStringField="id" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="customer_name" Type="String" />
            <asp:Parameter Name="customer_kana" Type="String" />
            <asp:Parameter Name="companyID" Type="Int32" />
            <asp:Parameter Name="section" Type="String" />
            <asp:Parameter Name="post" Type="String" />
            <asp:Parameter Name="zipcode" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="staffID" Type="Int32" />
            <asp:Parameter Name="first_action_date" Type="DateTime" />
            <asp:Parameter Name="memo" Type="String" />
            <asp:Parameter Name="input_date" Type="DateTime" />
            <asp:Parameter Name="input_staff_name" Type="String" />
            <asp:Parameter Name="update_date" Type="DateTime" />
            <asp:Parameter Name="update_staff_name" Type="String" />
            <asp:Parameter Name="delete_flag" Type="Boolean" />
            <asp:Parameter Name="customerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:customer_actionConnectionString %>" SelectCommand="SELECT * FROM [tbl_company]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:customer_actionConnectionString %>" SelectCommand="SELECT * FROM [tbl_staff]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="customerID" DataSourceID="SqlDataSource1" OnItemCommand="FormView1_ItemCommand">
        <EditItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">顧客ID</td>
                    <td class="auto-style7">
                        <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
                    </td>
                    <td class="auto-style3">営業担当者</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="staff_name" DataValueField="staffID" SelectedValue='<%# Bind("staffID") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">顧客カナ</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="customer_kanaTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("customer_kana") %>' Width="240px" />
                    </td>
                    <td class="auto-style8">初回訪問日</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="first_action_dateTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("first_action_date", "{0:yyyy/MM/dd}") %>' Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">顧客名</td>
                    <td class="auto-style11" colspan="3">
                        <asp:TextBox ID="customer_nameTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("customer_name") %>' Width="240px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">会社名</td>
                    <td class="auto-style5" colspan="3">
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="company_name" DataValueField="companyID" SelectedValue='<%# Bind("companyID") %>'>
                            <asp:ListItem Value="0">(選択してください)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">部署</td>
                    <td class="tableStyle2">
                        <asp:TextBox ID="sectionTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("section") %>' Width="240px" />
                    </td>
                    <td class="tableStyle1">役職</td>
                    <td class="tableStyle2">
                        <asp:TextBox ID="postTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("post") %>' Width="240px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">郵便番号</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="zipcodeTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("zipcode") %>' Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">住所</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="addressTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("address") %>' Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">TEL</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="telTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("tel") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">備考</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="memoTextBox" runat="server" CssClass="imeOn" Height="60px" Text='<%# Bind("memo") %>' TextMode="MultiLine" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">&nbsp;</td>
                    <td class="auto-style5" colspan="3">
                        <asp:CheckBox ID="delete_flagCheckBox" runat="server" Checked='<%# Bind("delete_flag") %>' Text="データを削除する場合には、チェックしてから[登録]ボタンをクリックする" Width="500px" />
                    </td>
                </tr>
            </table>
            &nbsp;<asp:Button ID="Button2" runat="server" CommandName="Update" Text="登録" />
            <asp:Button ID="Button3" runat="server" CommandName="Cancel" Text="キャンセル" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">顧客ID</td>
                    <td class="auto-style7">
                        <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
                    </td>
                    <td class="auto-style3">営業担当者</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="staff_name" DataValueField="staffID" SelectedValue='<%# Bind("staffID") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">顧客カナ</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="customer_kanaTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("customer_kana") %>' Width="240px" />
                    </td>
                    <td class="auto-style8">初回訪問日</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="first_action_dateTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("first_action_date", "{0:yyyy/MM/dd}") %>' Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">顧客名</td>
                    <td class="auto-style11" colspan="3">
                        <asp:TextBox ID="customer_nameTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("customer_name") %>' Width="240px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">会社名</td>
                    <td class="auto-style5" colspan="3">
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="company_name" DataValueField="companyID" SelectedValue='<%# Bind("companyID") %>'>
                            <asp:ListItem Value="0">(選択してください)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">部署</td>
                    <td class="tableStyle2">
                        <asp:TextBox ID="sectionTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("section") %>' Width="240px" />
                    </td>
                    <td class="tableStyle1">役職</td>
                    <td class="tableStyle2">
                        <asp:TextBox ID="postTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("post") %>' Width="240px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">郵便番号</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="zipcodeTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("zipcode") %>' Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">住所</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="addressTextBox" runat="server" CssClass="imeOn" Text='<%# Bind("address") %>' Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">TEL</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="telTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("tel") %>' Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">備考</td>
                    <td class="auto-style5" colspan="3">
                        <asp:TextBox ID="memoTextBox" runat="server" CssClass="imeOn" Height="60px" Text='<%# Bind("memo") %>' TextMode="MultiLine" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">&nbsp;</td>
                    <td class="auto-style5" colspan="3">
                        <asp:CheckBox ID="delete_flagCheckBox" runat="server" Checked='<%# Bind("delete_flag") %>' Text="データを削除する場合には、チェックしてから[登録]ボタンをクリックする" Width="500px" />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            <br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>最終更新日：<asp:Label ID="update_dateLabel" runat="server" Text='<%# Bind("update_date", "{0:yyyy/MM/dd}") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>最終更新者：<asp:Label ID="update_staff_nameLabel" runat="server" Text='<%# Bind("update_staff_name") %>' />
                    </td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">顧客ID</td>
                    <td class="auto-style7">
                        <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
                    </td>
                    <td class="auto-style3">営業担当者</td>
                    <td class="auto-style7">
                        <asp:Label ID="staff_nameLabel" runat="server" Text='<%# Bind("staff_name") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">顧客カナ</td>
                    <td class="tableStyle2">
                        <asp:Label ID="customer_kanaLabel" runat="server" Text='<%# Bind("customer_kana") %>' />
                    </td>
                    <td class="tableStyle1">初回訪問日</td>
                    <td class="tableStyle2">
                        <asp:Label ID="first_action_dateLabel" runat="server" Text='<%# Bind("first_action_date", "{0:yyyy/MM/dd}") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">顧客名</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="customer_nameLabel" runat="server" Text='<%# Bind("customer_name") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">会社名カナ</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="company_kanaLabel" runat="server" Text='<%# Bind("company_kana") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">会社名</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="company_nameLabel" runat="server" Text='<%# Bind("company_name") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">部署</td>
                    <td class="tableStyle2">
                        <asp:Label ID="sectionLabel" runat="server" Text='<%# Bind("section") %>' />
                    </td>
                    <td class="tableStyle1">役職</td>
                    <td class="tableStyle2">
                        <asp:Label ID="postLabel" runat="server" Text='<%# Bind("post") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">郵便番号</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="zipcodeLabel" runat="server" Text='<%# Bind("zipcode") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">住所</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">TEL</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">備考</td>
                    <td class="auto-style5" colspan="3">
                        <asp:Label ID="memoLabel" runat="server" Text='<%# Eval("memo").ToString().Replace("\r\n","<br />") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="編集" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerList.aspx">一覧に戻る</asp:HyperLink>
            <br />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
