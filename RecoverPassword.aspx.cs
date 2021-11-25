using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class RecoverPassword : System.Web.UI.Page
{
    String GUIDvalue;
    int Uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            GUIDvalue = Request.QueryString["id"];
            if(GUIDvalue!=null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count!=0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblmsg.Text = "Password reset link is invalid. Please try again:(";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                    lblmsg.Visible = true;
                }
                
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
            
        }
        if(!IsPostBack)
        {
            if(dt.Rows.Count != 0)
            {
                txtNewPass.Visible = true;
                txtConfirmPass.Visible = true;
               
                btnResetPass.Visible = true;
                RequiredFieldValidatorNewPass.Visible = true;
                RequiredFieldValidatorConfirmPass.Visible = true;
                CompareValidatorPassword.Visible = true;
            }
            else
            {
                lblmsg.Text = "Password reset link has expired. Please try again:(";
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Visible = true;
            }
        }

    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            GUIDvalue = Request.QueryString["Id"];
            if (GUIDvalue != null)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tblUsers set password=@p where Uid=@Uid", con);
                cmd.Parameters.AddWithValue("@p", txtConfirmPass.Text.Trim() );
                cmd.Parameters.AddWithValue("@Uid", Uid );
                cmd.ExecuteNonQuery();




                SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid='"+Uid+"'", con);
                cmd2.ExecuteNonQuery();
                //Response.Write("<script> alert('Password changes successfully!'); </script>");
                //Response.Redirect("~/SignIn.aspx");
                Response.Write("<script>alert('Password changed successfully!');location.href='SignIn.aspx'</script>");
                con.Close();
                
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}