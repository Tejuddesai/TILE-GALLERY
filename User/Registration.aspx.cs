using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(Id) from Registration";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text = i.ToString();
        cn.Close(); 
    }
    
    
    protected void btncreat_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Registration values('" + txtName.Text + "'," + txtContact.Text + ",'" + txtemail22.Text + "','" + txtAddress.Text + "','" + DropDownList1.Text + "','" + txtPass.Text + "','"+txtid.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "AddAccount", "<Script language = 'javascript'>alert('Account Created successfully')</Script>");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtemail22.Text = "";
        txtContact.Text = "";
        txtAddress.Text = "";
        txtPass.Text = "";
        
    }
}