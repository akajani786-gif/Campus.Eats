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
    public partial class menu : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        int i;

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

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_add_cart")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["pid"] = id;
                getcon();
                cmd = new SqlCommand("Select count(*) from cart_tbl where product_id='" + ViewState["pid"] + "' and user_id='" + ViewState["uid"] +"' and order_id is NULL", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i == 0)
                {
                    da = new SqlDataAdapter("select * from Products where Id='" + id + "'", con);
                    ds = new DataSet();
                    da.Fill(ds);
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int prep_time = Convert.ToInt16(ds.Tables[0].Rows[0]["preparation_time"].ToString());
                    cmd = new SqlCommand("insert into cart_tbl (user_id, product_id, quantity, price, prep_time, added_at) values ('" + ViewState["uid"] + "','" + ViewState["pid"] + "','" + 1 + "','" + price + "','" + prep_time + "',GETDATE())", con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    cmd = new SqlCommand("update cart_tbl set quantity=quantity+1 where product_id='" + ViewState["pid"] + "' and user_id='" + ViewState["uid"] + "' and order_id is NULL", con);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}