using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine; 
using CrystalDecisions.Shared;


public partial class Report_EnqSearch : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    ReportDocument crpt = new ReportDocument();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter dal = new SqlDataAdapter("select * from Enquiry Where EName= '"+txtbox.Text +"'", cn);
        dal.Fill(ds, "Enquiry");
        dal.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\Enquiry.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Enquiry");
        crpt.Refresh();
        cn.Close();

    }

    protected void txtbox_TextChanged(object sender, EventArgs e)
    {

    }
}