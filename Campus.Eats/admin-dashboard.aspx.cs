using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;//for conncetion
using System.Data;//for dataset
using System.Configuration;//for connection string 


namespace Campus.Eats
{
    public partial class admin_dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int i;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //getcon();
            //if (Session["admin"] == null)
            //{
            //    Response.Redirect("login.aspx");
            //}
            //else
            //{
            //    ViewState["unm"] = Session["admin"].ToString();
            //    da = new SqlDataAdapter("Select Id from users where name='" + ViewState["unm"] + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    ViewState["uid"] = Convert.ToInt16(ds.Tables[0].Rows[0]["Id"].ToString());
            //}
            fillordergrid();
            fillstatusdata();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillordergrid()
        {
            getcon();
            da = new SqlDataAdapter("select o.Id, u.name, p.name as p_name, c.quantity, o.pickup_time, (c.quantity * c.price) as t_price, o.status from order_tbl o inner join cart_tbl c on o.Id = c.order_id inner join Products p on p.Id = c.product_id inner join users u on u.id = c.user_id order by o.Id desc", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void fillstatusdata()
        {
            getcon();
            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'pending'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblpending.Text = i.ToString();

            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'preparing'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblpreparing.Text = i.ToString();

            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'ready'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblready.Text = i.ToString();
            
            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'collected'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblcollected.Text = i.ToString();
        }
    }
}