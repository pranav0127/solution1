<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="AddPromoCode.aspx.cs" Inherits="AddPromoCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
            <div class="form-horizontal">
                <br /><br />
                <br />
                <h2 class="heading">Add Promo Code</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1"  CssClass="col-md-2 control-label"  runat  ="server" Text="Promo Code:" style="font-weight:bold;"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPromoCode" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPromoCode" runat="server" ErrorMessage="Please Enter Promo Code" CssClass="text-danger" ControlToValidate="txtPromoCode" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnAddPromoCode" class="submit1" runat="server" Text="Add Promo Code" OnClick="btnAddPromoCode_Click" style="margin-left:-110px;" ></asp:Button>
                        
                   </div>
                    </div>

                    

            
        </div>
    </div>


    <h2 class="heading">Promo Codes </h2>
    <hr />
    <div class="panel panel-default">
    <div class="panel-heading">

        The table shows complete list of Promo Codes present in database!
    </div>
        <asp:Repeater ID="RepeaterBrand" runat="server">

            <HeaderTemplate>
                <table class="table">
               <thead>
                <tr>
                <th>#</th>
                <th>Promo Code</th>
               
                </tr>
              </thead>
                <tbody>

            </HeaderTemplate>

            <ItemTemplate>
                 <tr>
                <th> <%# Eval("ID") %> </th>
                <td><%# Eval("Code") %>  </td>
                
            </tr>

            </ItemTemplate>

            <FooterTemplate>

                </tbody>
                </table>

            </FooterTemplate>


        </asp:Repeater>

      

   </div>

      

</asp:Content>



