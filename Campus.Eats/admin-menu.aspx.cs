using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;//for conncetion
using System.Data;//for dataset
using System.Configuration;//for connection string 

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web.Design;

namespace Campus.Eats
{
    public partial class admin_menu : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        private CrystalDecisions.CrystalReports.Engine.ReportDocument cr = new ReportDocument();

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            filldatalist();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void filldatalist()
        {
            da = new SqlDataAdapter("select * from Products", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add-menu-item.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="cmd_edit")
            {
                int pid = Convert.ToInt16(e.CommandArgument);
                ViewState["pid"] = pid;
                Response.Redirect("edit-menu-item.aspx?pid=" + ViewState["pid"]);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("select * from Products", con);
            ds = new DataSet();
            da.Fill(ds);
            string s = Server.MapPath("~/product_data.xml");
            ds.WriteXmlSchema(s);

            string path = Server.MapPath("~/product_report.rpt");
            cr.Load(path);
            cr.SetDataSource(ds.Tables[0]);
            cr.Refresh();
            CrystalReportViewer1.ReportSource = cr;
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat,
            Response, true, "Product_Report");
        }
    }
}