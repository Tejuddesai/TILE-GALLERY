using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ProductCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string a = btn.CommandArgument;
        Session["cat"] = a.ToString();
        Response.Redirect("~//User//ProductSubCat.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}