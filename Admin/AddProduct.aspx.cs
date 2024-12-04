using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    public void clear()
    {
        txtid.Text = "";
        txtname.Text = "";
        Image2.ImageUrl = "";
        
        txtprice.Text = "";
        txtstock.Text = "";
        txtspecification.Text = "";
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
  
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Product set PId="+txtid.Text+",PName='"+txtname.Text+"',PCategory='"+ddcat.Text+"',PImage='"+Image2.ImageUrl+"',PCompany='"+ddcomp.Text+"',PSpecification='"+txtspecification.Text+"',Size='"+ddsize.Text+"',Color='"+ddcolor.Text+"',Shape='"+ddshape.Text+"',Pattern='"+ddpattern.Text+"',Finishing='"+ddfinish.Text+"',Thickness='"+ddthick.Text+"',SuitableFor='"+ddsuit.Text+"',Price="+txtprice.Text+",Stock="+txtstock.Text+",SubCategory='"+DropDownList1.Text+"'  where PId = "+txtid.Text+"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", 
            "<Script language ='javascript'>alert('Product Updated Successfully')</Script>");
        clear();
        GridView1.DataBind();
    }
        
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Product where PId=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete","<Script language='javascript'>alert('product Deleted Successfully')</Script>");
        clear();
        GridView1.DataBind();  
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void btnupload_Click(object sender, EventArgs e)
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
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        ddcat.Text = GridView1.SelectedRow.Cells[3].Text;
        Image2.ImageUrl = GridView1.SelectedRow.Cells[4].Text;
        ddcomp.Text = GridView1.SelectedRow.Cells[5].Text;
        txtspecification.Text = GridView1.SelectedRow.Cells[6].Text;
        ddsize.Text = GridView1.SelectedRow.Cells[7].Text;
        ddcolor.Text = GridView1.SelectedRow.Cells[8].Text;
        ddshape.Text = GridView1.SelectedRow.Cells[9].Text;
        ddpattern.Text = GridView1.SelectedRow.Cells[10].Text;
        ddfinish.Text = GridView1.SelectedRow.Cells[11].Text;
        ddthick.Text = GridView1.SelectedRow.Cells[12].Text;
        ddsuit.Text = GridView1.SelectedRow.Cells[13].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[14].Text;
        txtstock.Text = GridView1.SelectedRow.Cells[15].Text;
        
    }

    protected void btnnew_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(PId) from Product";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        cn.Close();
    }
    protected void btnsave_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Product values("+ txtid.Text + ",'" + txtname.Text + "','" + ddcat.Text + "','" + Image2.ImageUrl + "','" + ddcomp.Text + "','" + txtspecification.Text + "','" + ddsize.Text + "','" + ddcolor.Text + "','" + ddshape.Text + "','" + ddpattern.Text + "','" + ddfinish.Text + "','" + ddthick.Text + "','" + ddsuit.Text + "'," + txtprice.Text + "," + txtstock.Text + ",'"+DropDownList1.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Insert", "<Script language='javascript'>alert('product Save Successfully')</Script>");
        clear();
        GridView1.DataBind();
    }

    protected void btncancel_Click1(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        Image2.ImageUrl = "";
        
        txtprice.Text = "";
        txtstock.Text = "";
        txtspecification.Text = "";
    }
    protected void txtid_TextChanged(object sender, EventArgs e)
    {

    }
}