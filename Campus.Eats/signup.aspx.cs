using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Campus.Eats
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        bool check;
        int i;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        //void filldata()
        //{
        //    getcon();
        //    da = new SqlDataAdapter("Select * from emp_tbl where Id='" + ViewState["id"] + "'", con);
        //    ds = new DataSet();
        //    da.Fill(ds);

        //    txtunm.Text = ds.Tables[0].Rows[0][1].ToString();
        //    txteml.Text = ds.Tables[0].Rows[0][2].ToString();
        //    txtmno.Text = ds.Tables[0].Rows[0][3].ToString();
        //    txtpass.Text = ds.Tables[0].Rows[0][4].ToString();
        //    txtcpass.Text = ds.Tables[0].Rows[0][4].ToString();
        //}

        void check_cond()
        {
            check = true;

            if (txtunm.Text == "")
            {
                lblunmerr.Text = "Username can not be empty";
                check = false;
            }
            else
            {
                getcon();
                cmd = new SqlCommand("Select count(*) from users where name='" + txtunm.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    lblunmerr.Text = "Username already exists use different username";
                    check = false;
                }
                else
                {
                    lblunmerr.Text = "";
                }
            }

            if (txteml.Text == "")
            {
                lblemlerr.Text = "Emal can not be empty";
                check = false;
            }
            else
            {
                lblemlerr.Text = "";
            }

            if (txtmno.Text == "")
            {
                lblmnoerr.Text = "Mobile Number can not be empty";
                check = false;
            }
            else
            {
                lblmnoerr.Text = "";
            }

            if (txtpass.Text == "")
            {
                lblpasserr.Text = "Password can not be empty";
                check = false;
            }
            else
            {
                if (txtpass.Text == txtcpass.Text)
                {
                    string pass = txtpass.Text;
                    lblpasserr.Text = "";
                }
                else
                {
                    check = false;
                    lblpasserr.Text = "Password and Confirm Password does not match.";
                }
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            check_cond();

            if (check)
            {
                getcon();
                cmd = new SqlCommand("insert into users(name, email, phone, password, role, rating)values('" + txtunm.Text + "','" + txteml.Text + "','" + txtmno.Text + "','" + txtpass.Text + "','user',10)", con);
                cmd.ExecuteNonQuery();
                Response.Redirect("home.aspx");
            }
        }
    }
}