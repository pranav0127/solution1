using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["UserName"] != null)
        {

            btnSignIn.Visible = false;
            btnlogout.Visible = true;
        }
        else
        {
            btnlogout.Visible = false;
            btnSignIn.Visible = true;

            //Response.Redirect("~/Default.aspx");
        }
        
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();

        Session["Username"] = null;
        Response.Redirect("~/Default.aspx");
        
        
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
    }

    protected void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();

        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }
}
