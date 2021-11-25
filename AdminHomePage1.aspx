<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="AdminHomePage1.aspx.cs" Inherits="AdminHomePage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <br /><br />
    <h2 style="text-align:center;" class="heading">Hey Admin! Happy to see you here:)</h2>
    <br /><br />
    <div style="text-align:center; ">
        <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" class="submit1" OnClick="btnAddProduct_Click" />
        <asp:Button ID="btnAddBrand" runat="server" Text="Add Brand" class="submit1" OnClick="btnAddBrand_Click" style="margin-left:150px;"/>
    </div>
    <br />
    <div style="text-align:center;  ">
        <asp:Button ID="btnAddSubCategory" runat="server" Text="Add Sub Category" class="submit1" OnClick="btnAddSubCategory_Click" />
        <asp:Button ID="btnAddSize" runat="server" Text="Add Size" class="submit1" OnClick="btnAddSize_Click" style="margin-left:150px;"/>
    </div>
    <br />
    <div style="text-align:center;  ">
        <asp:Button ID="btnAddPromoCode" runat="server" Text="Add Promo Code" class="submit1" OnClick="btnAddPromoCode_Click"/>
    </div>
</asp:Content>

