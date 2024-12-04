using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class User_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter dr = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnLogin0_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Name,Password from Registration where Name='" + txtname1.Text + "'and Password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        dr.SelectCommand = cmd;
        dr.Fill(dt);
        cn.Close();

        if (dt.Rows.Count > 0)
        {
            Session["Login"] = txtname1.Text;
            Response.Redirect("~/Customer/HOME.aspx");
         
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Invalid Login Password')</Script>");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtname1.Text = "";
        txtpassword.Text = "";
    }


    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {

    }
}
