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
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int i;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["staff"] == null && Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (Session["user"] != null)
                {
                    ViewState["unm"] = Session["user"].ToString();
                }
                else if (Session["staff"] != null)
                {
                    ViewState["unm"] = Session["staff"].ToString();
                }
                else if (Session["admin"] != null)
                {
                    ViewState["unm"] = Session["admin"].ToString();
                }
                getcon();
                da = new SqlDataAdapter("Select Id from users where name='" + ViewState["unm"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                ViewState["uid"] = Convert.ToInt16(ds.Tables[0].Rows[0]["Id"].ToString());
            }

            fillorderdata();
            fillstatusdata();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillstatusdata()
        {
            getcon();
            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'pending' and c.user_id = '" + ViewState["uid"] +"'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblpending.Text = i.ToString();

            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'preparing' and c.user_id = '" + ViewState["uid"] +"'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblpreparing.Text = i.ToString();

            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'ready' and c.user_id = '" + ViewState["uid"] +"'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblready.Text = i.ToString();

            cmd = new SqlCommand("Select count(*) from order_tbl o inner join cart_tbl c on o.Id = c.order_id where status = 'collected' and c.user_id = '" + ViewState["uid"] +"'", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());
            lblcollected.Text = i.ToString();
        }

        void fillorderdata()
        {
            getcon();
            da = new SqlDataAdapter("select p.name,c.quantity,(p.price * c.quantity) as t_price, p.image, o.pickup_time, o.status, c.Id from products p inner join cart_tbl c on p.Id = c.product_id inner join order_tbl o on c.order_id = o.Id where c.user_id = '" + ViewState["uid"] + "' and CAST(o.date AS DATE) = CAST(GETDATE() AS DATE)", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}