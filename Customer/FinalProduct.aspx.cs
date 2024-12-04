using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


 public partial class Customer_FinalProduct : System.Web.UI.Page
  {
      SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
      SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Session["cat"].ToString();
        Label5.Text = a.ToString();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string a = btn.CommandArgument;
        Session["pid"] = a.ToString();
        Response.Redirect("~/Customer/ViewDetails.aspx");
    }
}