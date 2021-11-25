<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
            <div class="form-horizontal">
                <br /><br />
                <br />
                <h2 class="heading">Add Brand</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1"  CssClass="col-md-2 control-label"  runat  ="server" Text="Brand Name:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" ErrorMessage="Please Enter Brand Name" CssClass="text-danger" ControlToValidate="txtBrandName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnAddBrand" class="submit1" runat="server" Text="Add Brand" OnClick="btnAddBrand_Click" style="margin-left:-110px;" ></asp:Button>
                        
                   </div>
                    </div>

                    

            
        </div>
    </div>


    <h2 class="heading">Brands</h2>
    <hr />
    <div class="panel panel-default">
    <div class="panel-heading">

        The table shows complete list of brands present in database!
    </div>
        <asp:Repeater ID="RepeaterBrand" runat="server">

            <HeaderTemplate>
                <table class="table">
               <thead>
                <tr>
                <th>#</th>
                <th>Brands</th>
               
                </tr>
              </thead>
                <tbody>

            </HeaderTemplate>

            <ItemTemplate>
                 <tr>
                <th> <%# Eval("BrandID") %> </th>
                <td><%# Eval("Name") %>  </td>
                
            </tr>

            </ItemTemplate>

            <FooterTemplate>

                </tbody>
                </table>

            </FooterTemplate>


        </asp:Repeater>

      

   </div>

      

</asp:Content>

