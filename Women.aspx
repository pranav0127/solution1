<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Women.aspx.cs" Inherits="Women" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br /><br />
<h3>Welcome to Women's Section</h3>
    <hr /><br /><br />
    <div class="row" style="padding-top:50px">
    <asp:Repeater ID="rptrWomenProducts" runat="server">
        <ItemTemplate>

    <div class="col-sm-3 col-md-3">
        <a href="ViewProduct.aspx?PID=<%# Eval("PID") %> " style="text-decoration:none">
        <div class="thumbnail">
            <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extension") %>" alt="<%# Eval("ImageName") %>" />
            <div class="caption">
                <div class="probrand"> <%# Eval("BrandName") %> </div>
                <div class="proName"> <%# Eval("PName") %> </div>
                <div class="proPrice"><span class="proOgPrice"> <%# Eval("PPrice") %> &nbsp;</span> <%# Eval("PSubPrice") %> <span class="proPriceDiscount">&nbsp; (<%# Eval("DiscAmount") %> off)  </span></div>
                
            </div>
        </div>
            </a>
    </div>
    </ItemTemplate>
   </asp:Repeater>

</div>



</asp:Content>

