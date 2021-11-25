 <%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
            <div class="form-horizontal">
                <br /><br /><br />
                <h2 class="heading">Add Size</h2>
                <hr />

                 <div class="form-group">
                    <asp:Label ID="Label3"  CssClass="col-md-2 control-label"  runat  ="server" Text="Enter Size:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:textbox id="txtSize" CssClass="form-control" runat="server"></asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Size" CssClass="text-danger" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label4"  CssClass="col-md-2 control-label"  runat  ="server" Text="Select Brand:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrand" runat="server" ErrorMessage="Please select brand" CssClass="text-danger" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class="form-group">
                    <asp:Label ID="Label2"  CssClass="col-md-2 control-label"  runat  ="server" Text="Select Category:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCategory" runat="server" ErrorMessage="Please select category" CssClass="text-danger" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label ID="Label1"  CssClass="col-md-2 control-label"  runat  ="server" Text="Select Sub-Category:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                       <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlSubCategory" runat="server" ErrorMessage="Please Select Sub-Category" CssClass="text-danger" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

               



                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnAddSize" class="submit1" runat="server" Text="Add Size" OnClick="btnAddSize_Click" ></asp:Button>
                        
                   </div>
                    </div>

                    

            
        </div>

        <h2 class="heading">Size</h2>
        <hr />

        <div class="panel panel-default">
    <div class="panel-heading">

        The table shows complete list of sizes present in database!
    </div>
        <asp:Repeater ID="RepeaterSizes" runat="server">

            <HeaderTemplate>
                <table class="table">
               <thead>
                <tr>
                <th>#</th>
                <th>Size</th>
                <th>Brand</th>
                <th>Category</th>
                <th>Sub-Category</th>
       
                </tr>
              </thead>
                <tbody>

            </HeaderTemplate>

            <ItemTemplate>
                 <tr>
                <th> <%# Eval("SizeID") %> </th>
                <td><%# Eval("SizeName") %>  </td>
                     <td><%# Eval("Name") %>  </td>
                     <td><%# Eval("CatName") %>  </td>
                     <td><%# Eval("SubCatName") %>  </td>
           
            </tr>

            </ItemTemplate>

            <FooterTemplate>

                </tbody>
                </table>

            </FooterTemplate>


        </asp:Repeater>

      

   </div>




    </div>

</asp:Content>

