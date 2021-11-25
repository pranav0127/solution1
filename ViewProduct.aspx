<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
                <%-- Slider starts --%>

                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

      <asp:repeater ID="rptrImage" runat="server">
          <ItemTemplate>

    <div class="item <%# GetActiveImgClass(Container.ItemIndex) %>">
      <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/no-image.png'">
      <div class="carousel-caption">
        01
      </div>
    </div>

              </ItemTemplate>
    </asp:repeater>

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

                <%-- Slider ends --%>

               

            </div>
        </div></div>
        <div class="col-md-5">
            <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound">
                <ItemTemplate>

               

            <div class="divDet1">
            <h1 class="proNameView"><%# Eval("PName") %></h1>
            <span class="proOgPriceView"><%# Eval("PPrice") %></span><span class="proPriceDiscountView">&nbsp; (<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSubPrice"))) %>Off)</span>
            <p class="proPriceView"><%# Eval("PSubPrice") %></p>

         <div>
             <h5 class="h5Size"> SIZE: </h5>
             <div>
                 <asp:radiobuttonlist id="rblSize" runat="server" repeatdirection="Horizontal">
                     <asp:ListItem Value="7UK" Text="7UK"></asp:ListItem>
                     <asp:ListItem Value="8UK" Text="8UK"></asp:ListItem>
                     <asp:ListItem Value="9UK" Text="9UK"></asp:ListItem>
                     <asp:ListItem Value="10UK" Text="10UK"></asp:ListItem>
                     <asp:ListItem Value="11UK" Text="11UK"></asp:ListItem>
                     <asp:ListItem Value="12UK" Text="12UK"></asp:ListItem>
                 </asp:radiobuttonlist>
             </div>
         </div></div>
        <div >
            <asp:button ID="btnAddToCart" runat="server" CssClass=" mainButton" text="ADD TO CART" onclick="btnAddToCart_Click"  />
            <asp:Label ID="lblError" CssClass="text-danger" runat ="server" Text=""></asp:Label>
         </div>
        <div class="divDet1">
            <h5 class="h5Size"> DESCRIPTION</h5>
            <p><%# Eval("PDescription") %></p>
      

      
            <h5 class="h5Size"> PRODUCT DETAILS</h5>
            <p><%# Eval("PProductDetails") %></p>
        

       
            <h5 class="h5Size"> MATERIAL CARE </h5>
            <p><%# Eval("PMaterialCare") %></p>
            </div>
      

         <div class="divDet1">
             <div class="h5Size">
                <p> <%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":"" %> </p>
                 <p> <%# ((int)Eval("30DayRet")==1)? "30 Days Return Policy":"" %> </p>
                 <p> <%# ((int)Eval("COD")==1)? "Cash on Delivery available on this product":"" %> </p></div>

             <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PCategoryID") %>' />
             <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%# Eval("PSubCatID") %>' />
             <asp:HiddenField ID="hfBrandID" runat="server" Value='<%# Eval("PBrandID") %>' />

            
        </div>

     </ItemTemplate>
            </asp:Repeater>

    </div>
</asp:Content>

