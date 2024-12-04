using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Customer_CartPage : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename= E:\\TILE GALLERY\\App_Data\\TILE.mdf ;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();

    //DataTable dt = new DataTable();
    //string z = "inprocess";
    //string s, s1, s2;
    //int a;
    //string pp;
    //int PID;

    int p,q,t;
    int st2;
    int st3,id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(OId) from [Order]";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        lblid2.Text = x.ToString();
        cn.Close();
        lblname2.Text = Session["Login"].ToString();
        lbldat2.Text = System.DateTime.Now.ToShortDateString();
        cn.Open();
        cmd.CommandText = "select sum (Total)from CartDetails";
        double amt = Convert.ToDouble(cmd.ExecuteScalar());
        cmd.Connection = cn;
        lblamount2.Text = amt.ToString();
        time.Text = System.DateTime.Now.ToShortTimeString();
        cn.Close();

    }

    protected void btnconf_Click(object sender, EventArgs e)
    {
        //for (int i = 0; i < GridView1.Rows.Count; i++)
        //{
        //     PID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
        //    string PName  = (GridView1.Rows[i].Cells[1].Text);
        //    double price = Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);
        //    //int PID = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
        //      //String name = Session["Login"].ToString();
        //  //  lblname2.Text = name.ToString();
        //    //DropDownList q = (DropDownList)GridView1.Rows[i].FindControl("DropDownList") as DropDownList;
        //    int p = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
      
        //     q = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
        //    //double t = Convert.ToDouble(GridView1.Rows[i].Cells[5].Text);
        //    cn.Open();
        //    cmd.CommandText ="insert into CartDetails values(" + PID + ",'" + PName + "'," + price + ","+ p +",'" + q + "')";
        //    cmd.Connection = cn;
        //    cmd.ExecuteNonQuery();
        //    cn.Close();
        //}

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {


            int oid = Convert.ToInt32(lblid2.Text);
            id = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
            string name = Session["Login"].ToString();
            string cat = Convert.ToString(GridView1.Rows[i].Cells[1].Text);
            string pname = Convert.ToString(GridView1.Rows[i].Cells[2].Text);
            string username = Convert.ToString(GridView1.Rows[i].Cells[3].Text);  
            p = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
            q = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            t = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);

            cn.Open();
            cmd.CommandText = "insert into OrderDetails values(" + oid + "," + id + ",'" + name + "','" + cat + "','" + pname + "'," + q + "," + p + "," + t + ",'"+txtcaddress3.Text+"','"+txtcity3.Text +"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

        }


        string Status = "in Process";
        cn.Open();
        //cmd.CommandText="insert into [Order] values ("+lblid.Text+",'"+lblname.Text+"','"+txtcaddress.Text+"',"+txtccont+")";
        cmd.CommandText = "insert into [Order] values (" + lblid2.Text + ",'" + txtcaddress3.Text + "'," + txtccont3.Text + ",'" + lbldat2.Text + "'," + lblamount2.Text + ",'" + Status + "','" + lblname2.Text + "','"+txtcity3.Text +"')";
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save","< script language = 'javascriot'>alert('Order Confirmed')</Script>");
        Session["id"]=lblid2.Text;
        Session["Total"]=lblamount2.Text;
        Response.Redirect("~\\Customer\\Payment.aspx");

        cn.Open();
        cmd.CommandText = "Select Available_Stock from product";
        cmd.Connection = cn;
        st2 = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();

        int st3 = st2 - q;
        cn.Open();
        cmd.CommandText = " update [Product] set Available_Stock = " + st3 + " Where PId=" + id + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "Delete from  CartDetails";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}


            