using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Enquiry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    public void clear()
    {
        txt1122.Text = "";
        txtcont.Text = "";
        txtemail.Text = "";
        txtmsg.Text = "";
        txtsub.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    


    protected void btnreset_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Enquiry values('" + txt1122.Text + "','" + txtemail.Text + "'," + txtcont.Text + ",'" + txtsub.Text + "','" + txtmsg.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"submit","<Script language = 'javascript'>alert('Submit successfully')</Script>");
        clear();
    }
}