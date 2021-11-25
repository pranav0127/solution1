using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if(isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name,Usertype) Values('"+txtUname.Text.Trim()+"', '"+txtPass.Text.Trim()+"', '"+txtEmail.Text.Trim()+"', '"+txtName.Text.Trim()+"','User')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Welcome! Registeration successfull. Happy Shopping:)'); </script>");
                clr();
                con.Close();
                
            }
            Response.Redirect("~/SignIn.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registeration Failed :( Try again!'); </script>");
        }

    }
     
    private bool isformvalid()
    {
        
        if (txtUname.Text=="")
        {
            Response.Write("<script> alert('Please enter valid username'); </script>");
            txtUname.Focus();
            return false;
        }
        else if(txtPass.Text=="")
        {
            Response.Write("<script> alert('Please enter password'); </script>");
            txtPass.Focus();
            return false;
        }
        else if( ! txtPass.Text.Equals(txtCPass.Text))
        {
            Response.Write("<script> alert('Password and confirm password don't match.'); </script>");
            txtCPass.Focus();
            txtPass.Focus();
            return false;
        }
        else if (txtName.Text == "")
        {
            Response.Write("<script> alert('Please enter your name'); </script>");
            txtName.Focus();
            return false;
        }
        else if (txtEmail.Text == "")
        {
            Response.Write("<script> alert('Please enter Email ID'); </script>");
            txtEmail.Focus();
            return false;
        }
        
        return true;
        
    }
     private void clr()
    {
        txtCPass.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtName.Text = string.Empty;
        txtPass.Text = string.Empty;
        txtUname.Text = string.Empty;
    }
}