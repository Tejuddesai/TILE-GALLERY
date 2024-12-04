using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Admin set AdminName='" + txtaname.Text + "',AdminPassword='"+txtnewpassword.Text+"' where AdminName='"+txtaname.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language ='javascript'>alert('Password Updated Successfully')</Script>");
        GridView1.DataBind();
       
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtaname.Text = "";
        txtnewpassword.Text = "";
        txtpassword.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtaname.Text=GridView1.SelectedRow.Cells[1].Text;
        txtnewpassword.Text=GridView1.SelectedRow.Cells[2].Text;
    }
}