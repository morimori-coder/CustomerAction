<%@ Page Title="顧客情報" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerCard.aspx.cs" Inherits="CustomerAction.CustomerCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            customerID:
            <asp:Label ID="customerIDLabel" runat="server" Text='<%# Eval("customerID") %>' />
            <br />
            customer_name:
            <asp:Label ID="customer_nameLabel" runat="server" Text='<%# Bind("customer_name") %>' />
            <br />
            customer_kana:
            <asp:Label ID="customer_kanaLabel" runat="server" Text='<%# Bind("customer_kana") %>' />
            <br />
            companyID:
            <asp:Label ID="companyIDLabel" runat="server" Text='<%# Bind("companyID") %>' />
            <br />
            section:
            <asp:Label ID="sectionLabel" runat="server" Text='<%# Bind("section") %>' />
            <br />
            post:
            <asp:Label ID="postLabel" runat="server" Text='<%# Bind("post") %>' />
            <br />
            zipcode:
            <asp:Label ID="zipcodeLabel" runat="server" Text='<%# Bind("zipcode") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel:
            <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            staffID:
            <asp:Label ID="staffIDLabel" runat="server" Text='<%# Bind("staffID") %>' />
            <br />
            first_action_date:
            <asp:Label ID="first_action_dateLabel" runat="server" Text='<%# Bind("first_action_date") %>' />
            <br />
            memo:
            <asp:Label ID="memoLabel" runat="server" Text='<%# Bind("memo") %>' />
            <br />
            input_date:
            <asp:Label ID="input_dateLabel" runat="server" Text='<%# Bind("input_date") %>' />
            <br />
            input_staff_name:
            <asp:Label ID="input_staff_nameLabel" runat="server" Text='<%# Bind("input_staff_name") %>' />
            <br />
            update_date:
            <asp:Label ID="update_dateLabel" runat="server" Text='<%# Bind("update_date") %>' />
            <br />
            update_staff_name:
            <asp:Label ID="update_staff_nameLabel" runat="server" Text='<%# Bind("update_staff_name") %>' />
            <br />
            delete_flag:
            <asp:CheckBox ID="delete_flagCheckBox" runat="server" Checked='<%# Bind("delete_flag") %>' Enabled="false" />
            <br />
            company_name:
            <asp:Label ID="company_nameLabel" runat="server" Text='<%# Bind("company_name") %>' />
            <br />
            company_kana:
            <asp:Label ID="company_kanaLabel" runat="server" Text='<%# Bind("company_kana") %>' />
            <br />
            staff_name:
            <asp:Label ID="staff_nameLabel" runat="server" Text='<%# Bind("staff_name") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
</asp:Content>
