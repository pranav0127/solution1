using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddSize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if( !IsPostBack )
        {
            BindBrand();
            BindMainCat();
            BindSizeRepeater();
        }
    }


    public void BindMainCat()
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName"; //the column heading..data of which we want to show
                ddlCategory.DataValueField = "CatID"; //what we will see is category Name..but it will save its id
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("--Select--", "0"));

            }

        }
    }


    public void BindBrand()
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblBrands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrand.DataSource = dt;
                ddlBrand.DataTextField = "Name"; //the column heading..data of which we want to show
                ddlBrand.DataValueField = "BrandID"; //what we will see is category Name..but it will save its id
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0, new ListItem("--Select--", "0"));

            }
        }
    }

    public void BindSizeRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.*,C.*,D.* from tblSizes A inner join tblCategory B on B.CatID = A.CategoryID inner join tblBrands C on C.BrandID=A.BrandID inner join tblSubCategory D on D.SubCatID = A.SubCategoryID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    RepeaterSizes.DataSource = dt;
                    RepeaterSizes.DataBind();
                }
            }


        }

    }

    protected void btnAddSize_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblSizes(SizeName,BrandID,CategoryID,SubCategoryID) Values('"+txtSize.Text.Trim()+"','"+ddlBrand.SelectedItem.Value+ "','" + ddlCategory.SelectedItem.Value + "','" + ddlSubCategory.SelectedItem.Value + "')", con);
            cmd.ExecuteNonQuery();
            txtSize.Text = string.Empty;
            con.Close();
            txtSize.Focus();
            Response.Write("<script> alert('Size added to the database!'); </script>");
            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;
            ddlSubCategory.ClearSelection();
            ddlSubCategory.Items.FindByValue("0").Selected = true;
            ddlBrand.ClearSelection();
            ddlBrand.Items.FindByValue("0").Selected = true;

        }
        BindSizeRepeater();

    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSubCategory where MainCatID = '"+ddlCategory.SelectedItem.Value+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "SubCatName"; //the column heading..data of which we want to show
                ddlSubCategory.DataValueField = "SubCatID"; //what we will see is category Name..but it will save its id
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, new ListItem("--Select--", "0"));

            }
        }

    }
}