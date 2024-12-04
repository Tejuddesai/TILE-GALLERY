using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Customer_ViewDetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string a = Session["Pid"].ToString();
    }
    protected void btncart_Click(object sender, EventArgs e)
    {
        int count = DataList2.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label lblid = DataList2.Items[i].FindControl("lblid") as Label;
            int id = Convert.ToInt32(lblid.Text);

            Label lblname = DataList2.Items[i].FindControl("lblname") as Label;
            string n = lblname.Text;
            Label lblprice = DataList2.Items[i].FindControl("lblprice") as Label;
            int p = Convert.ToInt32(lblprice.Text);

            DropDownList d = DataList2.Items[i].FindControl("DropDownlist1") as DropDownList;
            int q = Convert.ToInt32(d.Text);
            int t = (p*q*4);

            Label lblcat = DataList2.Items[i].FindControl("lblcat") as Label;
            string cat = lblcat.Text;

            Label lbltot = DataList2.Items[i].FindControl("lbltot") as Label;
            lbltot.Text = t.ToString();
           
            
            string l = Session["Login"].ToString();
            cn.Open();
            cmd.CommandText = "insert into cartdetails values(" + id + ",'"+ cat +"','" + n+ "','"+l+"'," + p+ "," +q + "," + t + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<Script language = 'javascript'>alert('Added To Cart successfully')</Script>");

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count = DataList2.Items.Count;
        for (int i = 0; i < count; i++) 
        {
            Label lblprice = DataList2.Items[i].FindControl("lblprice") as Label;
            int p = Convert.ToInt32(lblprice.Text);
            DropDownList d = DataList2.Items[i].FindControl("DropDownList1") as DropDownList;
            int q = Convert.ToInt32(d.Text);
            int t = (p*q*4);
             Label lbltot = DataList2.Items[i].FindControl("lbltot") as Label;
            lbltot.Text = t.ToString();

        }


    }
}