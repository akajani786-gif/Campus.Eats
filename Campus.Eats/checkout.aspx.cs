using System;
using System.Collections.Generic;
using System.Configuration;//for connection string 
using System.Data;
using System.Data;//for dataset
using System.Data.SqlClient;
using System.Data.SqlClient;//for conncetion
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Campus.Eats
{
    public partial class checkout : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
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

            if (!IsPostBack)
            {
                txtpickup_time.Text = DateTime.Now.AddMinutes(30).ToString("HH:mm");
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillorderdata()
        {
            getcon();
            da = new SqlDataAdapter("select p.name,c.quantity,(p.price * c.quantity) as t_price from products p inner join cart_tbl c on p.Id = c.product_id where c.user_id = '" + ViewState["uid"] + "' and c.order_id is NULL", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();

            decimal total = 0;
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                decimal price = Convert.ToDecimal(row["t_price"]);
                total += price;
            }
            Label1.Text = total.ToString();

            //da = new SqlDataAdapter("SELECT * FROM order_tbl", con);
            //ds = new DataSet();
            //da.Fill(ds);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("insert into order_tbl(user_id, date, pickup_time, total, payment_method, status)values('" + ViewState["uid"] + "',GETDATE(),'" + txtpickup_time.Text + "','" + Label1.Text + "','" + drppaymentmethod.SelectedValue + "','pending')", con);
            cmd.ExecuteNonQuery();
            da = new SqlDataAdapter("Select Id from order_tbl order by Id desc", con);
            ds = new DataSet();
            da.Fill(ds);
            ViewState["oid"] = ds.Tables[0].Rows[0]["Id"].ToString();
            cmd = new SqlCommand("update cart_tbl set order_id='" + ViewState["oid"] + "' where user_id='" + ViewState["uid"] + "' and order_id is NULL", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("orders.aspx");
        }
    }
}