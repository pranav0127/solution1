using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHomePage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddProduct.aspx");
    }



    protected void btnAddBrand_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddBrand.aspx");
    }

    protected void btnAddSubCategory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddSubCategory.aspx");
    }

    protected void btnAddSize_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddSize.aspx");
    }

    protected void btnAddPromoCode_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddPromoCode.aspx");
    }

    
}