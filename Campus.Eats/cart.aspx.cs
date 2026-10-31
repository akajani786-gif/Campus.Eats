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
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
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
                da = new SqlDataAdapter("Select Id from users where name='" + ViewState["unm"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                ViewState["uid"] = Convert.ToInt16(ds.Tables[0].Rows[0]["Id"].ToString());
            }

            fillcartgrid();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillcartgrid()
        {
            getcon();
            da = new SqlDataAdapter("select c.product_id,p.image,p.name,p.price,c.quantity from Products p inner join cart_tbl c on p.Id=c.product_id and c.user_id = '" + ViewState["uid"] + "' and order_id is NULL", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();

            decimal total = 0;
            foreach(DataRow row in ds.Tables[0].Rows)
            {
                decimal price = Convert.ToDecimal(row["price"]);
                int quantity = Convert.ToInt16(row["quantity"]);
                total += price * quantity;
            }



            Label4.Text = total.ToString();
            Label5.Text = total.ToString();
        }

        //protected void DataList1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    //command name cmd_red_quan cmd_add_quan
            
        //}

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_add_quan")
            {
                int prod_id = Convert.ToInt32(e.CommandArgument);
                ViewState["pid"] = prod_id;
                cmd = new SqlCommand("update cart_tbl set quantity=quantity+1 where product_id='" + ViewState["pid"] + "' and user_id='" + ViewState["uid"] + "' and order_id is NULL", con);
                cmd.ExecuteNonQuery();
                fillcartgrid();
            }
            else if (e.CommandName == "cmd_red_quan")
            {
                int prod_id = Convert.ToInt32(e.CommandArgument);
                ViewState["pid"] = prod_id;
                cmd = new SqlCommand("Select quantity from cart_tbl where product_id='" + ViewState["pid"] + "' and user_id='" + ViewState["uid"] + "' and order_id is NULL", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i == 1)
                {
                    cmd = new SqlCommand("delete from cart_tbl where product_id='" + ViewState["pid"] + "' and user_id='" + ViewState["uid"] + "' and order_id is NULL", con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    cmd = new SqlCommand("update cart_tbl set quantity=quantity-1 where product_id='" + ViewState["pid"] + "' and user_id='" + ViewState["uid"] + "' and order_id is NULL", con);
                    cmd.ExecuteNonQuery();
                }
                fillcartgrid();
            }
        }
    }
}