using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Configuration;




public partial class Customer_Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\TILE GALLERY\\App_Data\\TILE.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    ReportDocument crpt = new ReportDocument();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Count(PaymentId) from Payment";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        lblpayid.Text = x.ToString();
        cn.Close();

        lbloid.Text = Session["id"].ToString();
        lblpdat.Text = System.DateTime.Now.ToShortDateString();
        
        
        lblcname.Text = Session["Login"].ToString();
        lbltamt.Text = Session["Total"].ToString();
        double t = Convert.ToDouble(lbltamt.Text);
        double GST = Convert.ToDouble(lblgst.Text);
        double net = t+((t * GST)/100);
        double dis = Convert.ToDouble(lbldis.Text);
        double net1 =net-(net*dis/100);
        lblnet.Text = net1.ToString();
    }
    
    protected void rd1_CheckedChanged(object sender, EventArgs e)
    {
        if (rd1.Checked == true)
        {
            Image3.Visible = false;
            btnplace.Enabled = true;

        }
    }
    //protected void rd2_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (rd2.Checked == true)
    //    {
    //        Panel1.Visible = true;
    //    }
    //    else
    //    {
    //        Panel1.Visible = true;
    //    }
    //}
    

    protected void btnplace_Click(object sender, EventArgs e)
    {
            cn.Open();
            cmd.CommandText = "insert Payment values(" + lblpayid.Text + "," + lbloid.Text + ",'" + lblpdat.Text + "',@p1," + lbldis.Text + "," + lblgst.Text + "," + lblnet.Text + "," + lbltamt.Text + ",'" + lblcname.Text + "')";
            if (rd1.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rd1.Text);
            else
                cmd.Parameters.AddWithValue("@p1", rd2.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            cn.Open();
            cmd.CommandText = "Delete from CartDetails";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<Script language = 'javascript'>alert('Order Place successfully')</Script>");
        
        
    }
    
    protected void rd2_CheckedChanged(object sender, EventArgs e)
    {
        if (rd2.Checked == true)
        {
            Image3.Visible = true;
            btnplace.Enabled = true;
        }
    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter dal = new SqlDataAdapter("select distinct * from  Bill where Oid="+lbloid.Text +"", cn);
        dal.Fill(ds, "Bill");
        dal.Fill(ds);
        crpt.Load(Server.MapPath(@"~/Customer/Billing.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Bill");
        crpt.Refresh();
        cn.Close();
        Response.Redirect(@"~//Customer/Billing.rpt");

    }
}