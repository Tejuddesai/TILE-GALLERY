using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True ");
    SqlCommand cmd = new SqlCommand();
    public void clear()
    {
        txtname.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        txtmessage.Text = "";
        txtrating.Text = "";
        txtdate.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + txtemail.Text + "'," + txtcontact.Text + ",'" + txtrating.Text + "','" + txtdate.Text + "','" + txtmessage.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<Script language = 'javascript'>alert('Record Submit successfully')</Script>");
        clear();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        txtmessage.Text = "";
        txtrating.Text = "";
        txtdate.Text = "";
    }
}