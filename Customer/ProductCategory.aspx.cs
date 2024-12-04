using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_ProductCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string a = btn.CommandArgument;
        Session["cat"] = a.ToString();
        Response.Redirect("~//Customer/ProductSubCataspx.aspx");
    }
}