<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal"><br /><br /><br />
            <h2 class="heading">Please fill in product details!</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" style="font-weight:bold;" runat="server" CssClass="col-md-2 control-label" Text="Name of the product:" ></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:label id="Label2" style="font-weight:bold;" runat="server" text="Price:" cssclass="col-md-2 control-label"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtPrice" cssclass="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            

            <div class="form-group">
                <asp:label id="Label3" style="font-weight:bold;" runat="server" text="Selling Price:" cssclass="col-md-2 control-label"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtSellPrice" cssclass="form-control" runat="server"></asp:textbox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" style="font-weight:bold;" runat="server" Text="Brand:" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" style="font-weight:bold;" runat="server" Text="Category:" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" AutoPostBack="true" CssClass="form-control" runat ="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label6" style="font-weight:bold;" runat="server" Text="SubCategory:" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat ="server" ></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8" style="font-weight:bold;" runat="server" Text="Size" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBoxList ID="CheckBoxSize"  CssClass="form-control" RepeatDirection="Horizontal"  runat="server">
                        <asp:ListItem>7UK</asp:ListItem>
                        <asp:ListItem>8UK</asp:ListItem>
                        <asp:ListItem>9UK</asp:ListItem>
                        <asp:ListItem>10UK</asp:ListItem>
                        <asp:ListItem>11UK</asp:ListItem>
                        <asp:ListItem>12UK</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>

             <div class="form-group">
                <asp:label id="Label18" style="font-weight:bold;" runat="server" text="Quantity:" cssclass="col-md-2 control-label"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txtQuantity" cssclass="form-control" runat="server"></asp:textbox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label7" style="font-weight:bold;" runat="server" Text="Description" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtdescription" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label13" style="font-weight:bold;" runat="server" Text="Product Details" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductDetails" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label14" style="font-weight:bold;" runat="server" Text="Material Care" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMaterialCare" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label9" style="font-weight:bold;" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" runat="server" CssClass="form-control" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label15" style="font-weight:bold;" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg02" runat="server" CssClass="form-control" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label16" style="font-weight:bold;" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg03" runat="server" CssClass="form-control" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label17" style="font-weight:bold;" runat="server" Text="Upload Image" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg04" runat="server" CssClass="form-control" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label10" style="font-weight:bold;" runat="server" Text="Free Delivery" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chFD" runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label11" style="font-weight:bold;" runat="server" Text="30 Days Return" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="ch30Ret" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label12" style="font-weight:bold;" runat="server" Text="Cash on Delivery" CssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chCOD" runat="server" />
                </div>
            </div>

            <div class="form-group">
               <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd"  runat="server" Text="Add Product &raquo;" class="submit1" OnClick="btnAdd_Click"  />
                </div>
            </div>





        </div>
    </div>


</asp:Content>

