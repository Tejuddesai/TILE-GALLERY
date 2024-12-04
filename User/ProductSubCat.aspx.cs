using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ProductSubCat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Session["cat"].ToString();
       // Label9.Text = a.ToString();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string a = btn.CommandArgument;
        Session["cat"] = a.ToString();
        Response.Redirect("~//User/FinalProduct.aspx");
    }
}