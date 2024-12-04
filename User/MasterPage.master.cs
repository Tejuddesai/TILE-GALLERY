using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox1.BorderWidth = 0;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string s1 = TextBox1.Text;
        Session["Search"] = s1.ToString();
        Response.Redirect("~/User/Search.aspx");
    }
}
