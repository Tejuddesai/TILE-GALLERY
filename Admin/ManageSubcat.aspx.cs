using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageSubcat : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    public void clear()
    {
        txtname.Text = "";
        txtid.Text = "";
        Image2.ImageUrl = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select max(SubId) from SubCategory";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        cn.Close();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into SubCategory values (" + txtid.Text + ",'" + DropDownList1.Text + "','" + Image2.ImageUrl + "','" + txtname.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Insert", "<Script language ='javascript'>alert('SubCategory Saved Successfully')</Script>");
        GridView1.DataBind();
        clear();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update SubCategory set SubId=" + txtid.Text + ",CatName='" + DropDownList1.Text + "',Image='" + Image2.ImageUrl + "',SubName='" + txtname.Text + "' where SubId=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language ='javascript'>alert('SubCategory updated Successfully')</Script>");
        GridView1.DataBind();
        clear();
    }
    protected void txtdelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from SubCategory where SubId=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script langage ='javascript'>alert('Delete Successfully')</Script>");
        GridView1.DataBind();
        clear();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
            Image2.ImageUrl = "~\\Image\\" + FileUpload1.FileName;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[4].Text;
        Image2.ImageUrl = GridView1.SelectedRow.Cells[3].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}