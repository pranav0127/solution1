using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@email", con);
            cmd.Parameters.AddWithValue("@email", txtEmailID.Text.Trim());
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //Response.Write("<script> alert('"+txtEmailID.Text+"'); </script>");
            //Response.Write("<script> alert('"+dt.Rows.Count+"'); </script>");
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('"+myGUID+"','"+Uid+"',GETDATE())",con);
                cmd1.ExecuteNonQuery();
                txtEmailID.Text = string.Empty;

                //Email send and password recovery

                string toEmailAddress = dt.Rows[0][3].ToString();
                string username = dt.Rows[0][1].ToString();
                string EmailBody = "Hey "+username+ "!<br/> Hope you are doing well. Please click on the below mentioned link to reset your password <br/> http://localhost:51343/RecoverPassword.aspx?id="+myGUID;
                MailMessage PassRecMail = new MailMessage("giitsol1@gmail.com",toEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";
               

                using (SmtpClient client = new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("giitsol1@gmail.com", "Giitsol@12345");
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(PassRecMail);
                }

                    //------------------------------





                    lblResetPassMsg.Text = "Password Reset link has been sent. Please check your mail box.";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                lblResetPassMsg.Visible = true;
                //Response.Write("<script> alert('Please check your mail box.'); </script>");

            }
            else
            {
                lblResetPassMsg.Text = "Email Id does not exists. Please try again :(";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                lblResetPassMsg.Visible = true;
                txtEmailID.Focus();
            }
            con.Close();
        }
    }
}
