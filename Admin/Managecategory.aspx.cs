using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_h : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    public void clear()
    {
        
        txtname.Text = "";
        txtid.Text = "";
        Image2.ImageUrl = "";
        txtinfo.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(CatId) from Category";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        cn.Close();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Category values ("+ txtid.Text +",'"+ txtname.Text +"','"+Image2.ImageUrl+"','"+txtinfo.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery(); 
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"Insert", "<Script language ='javascript'>alert('Category Saved Successfully')</Script>");
        GridView1.DataBind();
        clear();
        
    } 

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Category set CatId="+txtid.Text+",CatName='"+txtname.Text+"',CatImage='"+Image2.ImageUrl+"',CatInfo='"+txtinfo.Text+"' where CatId="+txtid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language ='javascript'>alert('Category updated Successfully')</Script>");
        GridView1.DataBind();
      
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Category where CatId=" + txtid.Text + "";
        cmd.Connection = cn; 
        cmd.ExecuteNonQuery(); 
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"Delete","<Script langage ='javascript'>alert('Delete Successfully')</Script>");
        GridView1.DataBind();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        Image2.ImageUrl = GridView1.SelectedRow.Cells[3].Text;
        txtinfo.Text = GridView1.SelectedRow.Cells[4].Text;
       
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
            Image2.ImageUrl = "~\\Image\\" + FileUpload1.FileName;
        }
    }
    protected void txtinfo_TextChanged(object sender, EventArgs e)
    {

    }
}