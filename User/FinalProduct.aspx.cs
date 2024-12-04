using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_FinalProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Session["cat"].ToString();
        Label5.Text = a.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}