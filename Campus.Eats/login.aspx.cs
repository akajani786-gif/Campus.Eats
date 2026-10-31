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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        int i;
        string pass;
        string role;

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void gridfill()
        {
            getcon();
            da = new SqlDataAdapter("select * from emp_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            bool check = true;

            if (txtunm.Text == "")
            {
                lblunmerr.Text = "please enter a valid username";
                check = false;
            }
            else
            {
                lblunmerr.Text = "";
            }

            if (txtpass.Text == "")
            {
                lblpasserr.Text = "Please enter a valid password";
                check = false;
            }
            else
            {
                lblpasserr.Text = "";
            }

            if (check)
            {
                getcon();
                cmd = new SqlCommand("Select count(*) from users where name='" + txtunm.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    da = new SqlDataAdapter("Select password,role from users where name='" + txtunm.Text + "'", con);
                    ds = new DataSet();
                    da.Fill(ds);
                    pass = ds.Tables[0].Rows[0][0].ToString();
                    role = ds.Tables[0].Rows[0][1].ToString();

                    if (txtpass.Text == pass)
                    {
                        if (role == "user")
                        {
                            Session["user"] = txtunm.Text;
                        }
                        else if (role == "staff")
                        {
                            Session["staff"] = txtunm.Text;
                        }
                        else if (role == "admin")
                        {
                            Session["admin"] = txtunm.Text;
                        }


                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        lblpasserr.Text = "Password does not match";
                    }
                }
                else
                {
                    lblpasserr.Text = "username not found";
                }
            }


        }
    }
}