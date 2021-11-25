<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
            <div class="form-horizontal">
                <br /><br /><br />
                <h2 class="heading">Add Sub Category</h2>
                <hr />

                 <div class="form-group">
                    <asp:Label ID="Label2"  CssClass="col-md-2 control-label"  runat  ="server" Text="Select Category ID:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCategory" runat="server" ErrorMessage="Please select category" CssClass="text-danger" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label ID="Label1"  CssClass="col-md-2 control-label"  runat  ="server" Text="Enter Sub-Category:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:textbox id="txtSubCategoryName" CssClass="form-control" runat="server"></asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSubCategoryName" runat="server" ErrorMessage="Please Enter Sub-Category" CssClass="text-danger" ControlToValidate="txtSubCategoryName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

               



                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnAddSubCategory" class="submit1" runat="server" Text="Add Sub Category"  OnClick="btnAddSubCategory_Click" ></asp:Button>
                        
                   </div>
                    </div>

                    

            
        </div>


        <h2 class="heading">Sub-Categories</h2>
        <hr />

        <div class="panel panel-default">
    <div class="panel-heading">

        The table shows complete list of sub-categories present in database!
    </div>
        <asp:Repeater ID="RepeaterSubCategory" runat="server">

            <HeaderTemplate>
                <table class="table">
               <thead>
                <tr>
                <th>#</th>
                <th>Sub Category</th>
                <th>Main Category</th>
           
                </tr>
              </thead>
                <tbody>

            </HeaderTemplate>

            <ItemTemplate>
                 <tr>
                <th> <%# Eval("SubCatID") %> </th>
                <td><%# Eval("SubCatName") %>  </td>
                 <td><%# Eval("CatName") %>  </td>
            
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

