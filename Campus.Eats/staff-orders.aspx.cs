using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;//for conncetion
using System.Data;//for dataset
using System.Configuration;//for connection string 


namespace Campus.Eats
{
    public partial class staff_orders : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //getcon();
            //if (Session["staff"] == null && Session["admin"] == null)
            //{
            //    Response.Redirect("login.aspx");
            //}
            //else
            //{
            //    if (Session["staff"] != null)
            //    {
            //        ViewState["unm"] = Session["staff"].ToString();
            //    }
            //    else if (Session["admin"] != null)
            //    {
            //        ViewState["unm"] = Session["admin"].ToString();
            //    }
            //    da = new SqlDataAdapter("Select Id from users where name='" + ViewState["unm"] + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    ViewState["uid"] = Convert.ToInt16(ds.Tables[0].Rows[0]["Id"].ToString());
            //}
            fillordergrid();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillordergrid()
        {
            getcon();
            da = new SqlDataAdapter("select o.Id, u.name, p.name as p_name, c.quantity, o.pickup_time, (c.quantity * c.price) as t_price, o.status from order_tbl o inner join cart_tbl c on o.Id = c.order_id inner join Products p on p.Id = c.product_id inner join users u on u.id = c.user_id order by case status when 'pending' then 1 when 'preparing' then 2 when 'ready' then 3 when 'collected' then 4 end, o.pickup_time", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //pending preparing ready collected
            if (e.CommandName == "cmd_preparing")
            {
                int oid = Convert.ToInt32(e.CommandArgument);
                ViewState["oid"] = oid;
                cmd = new SqlCommand("update order_tbl set status = 'preparing' where Id='" + ViewState["oid"] +"'", con);
                cmd.ExecuteNonQuery();
                fillordergrid();
            }

            else if (e.CommandName == "cmd_ready")
            {
                int oid = Convert.ToInt32(e.CommandArgument);
                ViewState["oid"] = oid;
                cmd = new SqlCommand("update order_tbl set status = 'ready' where Id='" + ViewState["oid"] + "'", con);
                cmd.ExecuteNonQuery();
                fillordergrid();
            }

            else if (e.CommandName == "cmd_collected")
            {
                int oid = Convert.ToInt32(e.CommandArgument);
                ViewState["oid"] = oid;
                cmd = new SqlCommand("update order_tbl set status = 'collected' where Id='" + ViewState["oid"] + "'", con);
                cmd.ExecuteNonQuery();
                fillordergrid();
            }
        }
    }
}