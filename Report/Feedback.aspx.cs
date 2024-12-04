﻿using System;
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

public partial class Report_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    ReportDocument crpt = new ReportDocument();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        cn.Open();
        SqlDataAdapter dal = new SqlDataAdapter("select * from Feedback", cn);
        dal.Fill(ds, "Feedback");
        dal.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\Feedback.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Feedback");
        crpt.Refresh();
        cn.Close();
    }
}