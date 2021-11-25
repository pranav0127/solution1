using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddPromoCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindPromoCode();
        }
    }

    protected void BindPromoCode()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblPromoCode", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RepeaterBrand.DataSource = dt;
                    RepeaterBrand.DataBind();
                }
            }


        }
    }

    protected void btnAddPromoCode_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblPromoCode(Code) Values('" + txtPromoCode.Text.Trim() + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Promo Code added to the database!'); </script>");
            txtPromoCode.Text = string.Empty;
            con.Close();
            txtPromoCode.Focus();

        }
        BindPromoCode();
    }
}