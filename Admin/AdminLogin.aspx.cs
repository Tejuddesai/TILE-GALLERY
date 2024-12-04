using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
 

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter dr = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select * from Admin where AdminName = '" + txtname1.Text + "' and AdminPassword ='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        dr.SelectCommand = cmd;
        dr.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["AdminLogin"] = txtname1.Text;
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='javascript'>alert('Invalid Admin Name or Password')</Script>");
        }
        cn.Close();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname1.Text = "";
        txtpassword.Text = "";
    }
}