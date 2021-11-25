using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if( ! IsPostBack )
        {
            BindBrand();
            BindCategory();
            CheckBoxSize.Visible = false;

        }

    }

    public void BindBrand()
    {

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
    }

    public void BindCategory()
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

    

    


    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSubCategory.Enabled = true;
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSubCategory where MainCatID = '" + ddlCategory.SelectedItem.Value + "'", con);
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

        using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            CheckBoxSize.Visible = true;
            con2.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSizes where CategoryID = '"+ddlCategory.SelectedItem.Value+"'", con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                CheckBoxSize.DataSource = dt;
                CheckBoxSize.DataTextField = "SizeName"; //the column heading..data of which we want to show
                CheckBoxSize.DataValueField = "SizeID"; //what we will see is category Name..but it will save its id
                CheckBoxSize.DataBind();
               

            }
        }


    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StepUp"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName",txtProductName.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@PSubPrice", txtSellPrice.Text);
            cmd.Parameters.AddWithValue("@PBrandID", ddlBrand.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", txtdescription.Text);
            cmd.Parameters.AddWithValue("@PProductDetails", txtProductDetails.Text);
            cmd.Parameters.AddWithValue("@PMaterialCare", txtMaterialCare.Text);

            if( chFD.Checked == true )
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
            }

            if (ch30Ret.Checked == true)
            {
                cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
            }

            if (chCOD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }

            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

            //insert quantity
            for(int i = 0; i < CheckBoxSize.Items.Count;i++)
            {
                if(CheckBoxSize.Items[i].Selected==true)
                {
                    Int64 SizeID = Convert.ToInt64(CheckBoxSize.Items[i].Value);
                    int Quantity = Convert.ToInt32(txtQuantity.Text);

                    SqlCommand cmd2 = new SqlCommand("insert into tblProductSizeQuantity values ('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
                    cmd2.ExecuteNonQuery();
                }
                
            }

            //insert and upload images
            if(fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if(!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim()+"01"+Extension);

                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values ('" + PID + "','" + txtProductName.Text.ToString().Trim() +"01"+  "','" + Extension + "')", con);
                cmd3.ExecuteNonQuery();

            }

            if (fuImg02.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "02" + Extension);

                SqlCommand cmd4 = new SqlCommand("insert into tblProductImages values ('" + PID + "','" + txtProductName.Text.ToString().Trim() + "02" + "','" + Extension + "')", con);
                cmd4.ExecuteNonQuery();

            }

            if (fuImg03.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg03.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "03" + Extension);

                SqlCommand cmd5 = new SqlCommand("insert into tblProductImages values ('" + PID + "','" + txtProductName.Text.ToString().Trim() + "03" + "','" + Extension + "')", con);
                cmd5.ExecuteNonQuery();

            }

            if (fuImg04.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg04.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "04" + Extension);

                SqlCommand cmd6 = new SqlCommand("insert into tblProductImages values ('" + PID + "','" + txtProductName.Text.ToString().Trim() + "04" + "','" + Extension + "')", con);
                cmd6.ExecuteNonQuery();

            }



        }
        Response.Write("<script> alert('Product added to database!'); </script>");
        Clear();

    }

    public void Clear()
    {
        txtProductName.Text = string.Empty;
        txtPrice.Text = string.Empty;
        txtSellPrice.Text = string.Empty;
        ddlBrand.ClearSelection();
        ddlBrand.Items.FindByValue("0").Selected = true;
        ddlCategory.ClearSelection();
        ddlCategory.Items.FindByValue("0").Selected = true;
        ddlSubCategory.ClearSelection();
        ddlSubCategory.Items.FindByValue("0").Selected = true;
        CheckBoxSize.AutoPostBack = false;
        txtQuantity.Text = string.Empty;
        txtdescription.Text = string.Empty;
        txtProductDetails.Text = string.Empty;
        txtMaterialCare.Text = string.Empty;
        fuImg01.Dispose();
        fuImg02.Dispose();
        fuImg03.Dispose();
        fuImg04.Dispose();
        chFD.Checked = false;
        ch30Ret.Checked = false;
        chCOD.Checked = false;
    }
}