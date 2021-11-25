using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Kids : System.Web.UI.Page
{
    public static string CS = ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindKidProductRepeater();
        }
    }

    public void BindKidProductRepeater()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("procBindKidsProducts", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrKidsProducts.DataSource = dt;
                    rptrKidsProducts.DataBind();
                }
            }
        }
    }

}