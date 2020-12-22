<%@ Page Title="顧客情報" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerCard.aspx.cs" Inherits="CustomerAction.CustomerCard" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:customer_actionConnectionString %>" SelectCommand="SELECT * FROM [vw_customer_view]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="customerID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            customerID:
            <asp:Label ID="customerIDLabel1" runat="server" Text='<%# Eval("customerID") %>' />
            <br />
            customer_name:
            <asp:TextBox ID="customer_nameTextBox" runat="server" Text='<%# Bind("customer_name") %>' />
            <br />
            customer_kana:
            <asp:TextBox ID="customer_kanaTextBox" runat="server" Text='<%# Bind("customer_kana") %>' />
            <br />
            companyID:
            <asp:TextBox ID="companyIDTextBox" runat="server" Text='<%# Bind("companyID") %>' />
            <br />
            section:
            <asp:TextBox ID="sectionTextBox" runat="server" Text='<%# Bind("section") %>' />
            <br />
            post:
            <asp:TextBox ID="postTextBox" runat="server" Text='<%# Bind("post") %>' />
            <br />
            zipcode:
            <asp:TextBox ID="zipcodeTextBox" runat="server" Text='<%# Bind("zipcode") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel:
            <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            staffID:
            <asp:TextBox ID="staffIDTextBox" runat="server" Text='<%# Bind("staffID") %>' />
            <br />
            first_action_date:
            <asp:TextBox ID="first_action_dateTextBox" runat="server" Text='<%# Bind("first_action_date") %>' />
            <br />
            memo:
            <asp:TextBox ID="memoTextBox" runat="server" Text='<%# Bind("memo") %>' />
            <br />
            input_date:
            <asp:TextBox ID="input_dateTextBox" runat="server" Text='<%# Bind("input_date") %>' />
            <br />
            input_staff_name:
            <asp:TextBox ID="input_staff_nameTextBox" runat="server" Text='<%# Bind("input_staff_name") %>' />
            <br />
            update_date:
            <asp:TextBox ID="update_dateTextBox" runat="server" Text='<%# Bind("update_date") %>' />
            <br />
            update_staff_name:
            <asp:TextBox ID="update_staff_nameTextBox" runat="server" Text='<%# Bind("update_staff_name") %>' />
            <br />
            delete_flag:
            <asp:CheckBox ID="delete_flagCheckBox" runat="server" Checked='<%# Bind("delete_flag") %>' />
            <br />
            company_name:
            <asp:TextBox ID="company_nameTextBox" runat="server" Text='<%# Bind("company_name") %>' />
            <br />
            company_kana:
            <asp:TextBox ID="company_kanaTextBox" runat="server" Text='<%# Bind("company_kana") %>' />
            <br />
            staff_name:
            <asp:TextBox ID="staff_nameTextBox" runat="server" Text='<%# Bind("staff_name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
        </EditItemTemplate>
        <InsertItemTemplate>
            customerID:
            <asp:TextBox ID="customerIDTextBox" runat="server" Text='<%# Bind("customerID") %>' />
            <br />
            customer_name:
            <asp:TextBox ID="customer_nameTextBox" runat="server" Text='<%# Bind("customer_name") %>' />
            <br />
            customer_kana:
            <asp:TextBox ID="customer_kanaTextBox" runat="server" Text='<%# Bind("customer_kana") %>' />
            <br />
            companyID:
            <asp:TextBox ID="companyIDTextBox" runat="server" Text='<%# Bind("companyID") %>' />
            <br />
            section:
            <asp:TextBox ID="sectionTextBox" runat="server" Text='<%# Bind("section") %>' />
            <br />
            post:
            <asp:TextBox ID="postTextBox" runat="server" Text='<%# Bind("post") %>' />
            <br />
            zipcode:
            <asp:TextBox ID="zipcodeTextBox" runat="server" Text='<%# Bind("zipcode") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel:
            <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            staffID:
            <asp:TextBox ID="staffIDTextBox" runat="server" Text='<%# Bind("staffID") %>' />
            <br />
            first_action_date:
            <asp:TextBox ID="first_action_dateTextBox" runat="server" Text='<%# Bind("first_action_date") %>' />
            <br />
            memo:
            <asp:TextBox ID="memoTextBox" runat="server" Text='<%# Bind("memo") %>' />
            <br />
            input_date:
            <asp:TextBox ID="input_dateTextBox" runat="server" Text='<%# Bind("input_date") %>' />
            <br />
            input_staff_name:
            <asp:TextBox ID="input_staff_nameTextBox" runat="server" Text='<%# Bind("input_staff_name") %>' />
            <br />
            update_date:
            <asp:TextBox ID="update_dateTextBox" runat="server" Text='<%# Bind("update_date") %>' />
            <br />
            update_staff_name:
            <asp:TextBox ID="update_staff_nameTextBox" runat="server" Text='<%# Bind("update_staff_name") %>' />
            <br />
            delete_flag:
            <asp:CheckBox ID="delete_flagCheckBox" runat="server" Checked='<%# Bind("delete_flag") %>' />
            <br />
            company_name:
            <asp:TextBox ID="company_nameTextBox" runat="server" Text='<%# Bind("company_name") %>' />
            <br />
            company_kana:
            <asp:TextBox ID="company_kanaTextBox" runat="server" Text='<%# Bind("company_kana") %>' />
            <br />
            staff_name:
            <asp:TextBox ID="staff_nameTextBox" runat="server" Text='<%# Bind("staff_name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
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
                    <td class="tableStyle2">
                        <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
                    </td>
                    <td class="tableStyle1">営業担当者</td>
                    <td class="tableStyle2">
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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerList.aspx">一覧に戻る</asp:HyperLink>
            <br />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
