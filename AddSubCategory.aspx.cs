using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddSubCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            AddCategoryDDL();
            BindSubCatRepeater();
        }
    }

    protected void btnAddSubCategory_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblSubCategory(SubCatName,MainCatID) Values('"+txtSubCategoryName.Text.Trim()+"','"+ddlCategory.SelectedItem.Value+"')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Sub Category added to the database!'); </script>");
            txtSubCategoryName.Text = string.Empty;
            con.Close();
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;
            

        }
        BindSubCatRepeater();
    }

    public void BindSubCatRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSubcategory A inner join tblCategory B on B.CatID = A.MainCatID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RepeaterSubCategory.DataSource = dt;
                    RepeaterSubCategory.DataBind();
                }
            }


        }

    }

    public void AddCategoryDDL()
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count!=0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName"; //the column heading..data of which we want to show
                ddlCategory.DataValueField = "CatID"; //what we will see is category Name..but it will save its id
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("--Select--", "0"));

            }
            


        }

    }
}