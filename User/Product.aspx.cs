using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class User_Product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

     public void clear()
    {
        txtid.Text="";
        txtname.Text="";
        txtspecification.Text="";
        txtprice.Text="";
        Image2.ImageUrl="";
        txtsize.Text="";
        txtstock.Text = "";
        txtsub.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select max(PId) from Product";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        cn.Close();
       
    }
    protected void save_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Product values(" + txtid.Text + ",'" + txtname.Text + "','" + Image2.ImageUrl + "','" + DropDownList3. Text + "'," + txtstock.Text + ",'" + txtspecification.Text + "','" + txtsize.Text + "'," +txtprice.Text +",'"+txtsub.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();  
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Insert", "<Script language='javascript'>alert('product Save Successfully')</Script>");
        GridView1.DataBind();
        clear();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Product set PId=" + txtid.Text + ",PName='" + txtname.Text + "',PImage='" + Image2.ImageUrl + "',PCompany='" + DropDownList3.Text + "',PSpecification='" + txtspecification.Text + "',Size='" + txtsize.Text + "',Color='" + txtcolor.Text + "',Shape='" + txtshape.Text + "',Pattern='" + txtpattern.Text + "',Finishing='" + txtfinish.Text + "',Thickness='" + txtthickness.Text + "',SuitableFor='" + txtsuitablefor.Text + "',Price=" + txtprice.Text + ",Stock=" + txtstock.Text + " ,SubCategory='" + txtsub.Text + "' where PId = " + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language ='javascript'>alert('Product Updated Successfully')</Script>");
        GridView1.DataBind();
        clear();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
      cn.Open();
      cmd.CommandText="delete from Product where PId="+txtid.Text+"";
      cmd.Connection= cn;
      cmd.ExecuteNonQuery();
      cn.Close();
      ClientScript.RegisterStartupScript(Page.GetType(),"Delete",
          "<Script language='javascript'>alert('product Deleted Successfully')</Script>");
      GridView1. DataBind();  
    }
    protected void btnclear_Click(object sender, EventArgs e)
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
        //DropDownList1.Text = GridView1.SelectedRow.Cells[3].Text;
        //DropDownList2.Text = GridView1.SelectedRow.Cells[4].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[10].Text;
        Image2.ImageUrl = GridView1.SelectedRow.Cells[5].Text;
        txtspecification.Text = GridView1.SelectedRow.Cells[8].Text;
        //DropDownList3.Text = GridView1.SelectedRow.Cells[6].Text;
        txtsize.Text = GridView1.SelectedRow.Cells[9].Text;
        txtstock.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    
}