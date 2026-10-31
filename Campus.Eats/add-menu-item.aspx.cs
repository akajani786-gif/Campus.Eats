using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Campus.Eats
{
    public partial class add_menu_item : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string fnm;
        bool check;
        int i;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            gridfill();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void imgupload()
        {
            fnm = "Images/" + flpimg.FileName;
            flpimg.SaveAs(Server.MapPath(fnm));
        }

        void clear()
        {
            txtnm.Text = "";
            drpcat.ClearSelection();
            txtdesc.Text = "";
            txtprice.Text = "";
            txtprep_t.Text = "";
        }

        void gridfill()
        {
            getcon();
            da = new SqlDataAdapter("Select * from Products", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void filldata()
        {
            getcon();
            da = new SqlDataAdapter("Select * from Products where Id='" + ViewState["Id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            txtnm.Text = ds.Tables[0].Rows[0][2].ToString();
            drpcat.SelectedValue = ds.Tables[0].Rows[0][1].ToString();
            txtdesc.Text = ds.Tables[0].Rows[0][3].ToString();
            txtprice.Text = ds.Tables[0].Rows[0][4].ToString();
            txtprep_t.Text = ds.Tables[0].Rows[0][6].ToString();
            fnm = ds.Tables[0].Rows[0][5].ToString();
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void check_add_cond()
        {
            check = true;

            if (txtnm.Text == "")
            {
                lblnmerr.Text = "Please enter item name";
                check = false;
            }
            else
            {
                getcon();
                cmd = new SqlCommand("Select count(*) from Products where name='" + txtnm.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    lblnmerr.Text = "This item already exists";
                    check = false;
                }
                else
                {
                    lblnmerr.Text = "";
                }
            }

            if (drpcat.SelectedValue == "-- Select Category --")
            {
                lblciderr.Text = "Please Select a category";
                check = false;
            }
            else
            {
                lblciderr.Text = "";
            }

            if (txtdesc.Text == "")
            {
                lbldescerr.Text = "Please enter description";
                check = false;
            }
            else
            {
                lbldescerr.Text = "";
            }

            if (txtprice.Text == "")
            {
                lblprierr.Text = "Please enter a valid amount";
                check = false;
            }
            else
            {
                lblprierr.Text = "";
            }

            if (txtprep_t.Text == "")
            {
                lblpreperr.Text = "Please enter the preparation time";
                check = false;
            }
            else
            {
                lblpreperr.Text = "";
            }

            if (flpimg.HasFiles == false)
            {
                lblimgerr.Text = "Please enter item image";
                check = false;
            }
            else
            {
                lblimgerr.Text = "";
            }
        }

        void check_upd_cond()
        {
            check = true;

            if (txtnm.Text == "")
            {
                lblnmerr.Text = "Please enter item name";
                check = false;
            }
            else
            {
                getcon();
                cmd = new SqlCommand("Select count(*) from Products where name='" + txtnm.Text + "' and Id!='" + ViewState["Id"] + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    lblnmerr.Text = "This item already exists";
                    check = false;
                }
                else
                {
                    lblnmerr.Text = "";
                }
            }

            if (drpcat.SelectedValue == "-- Select Category --")
            {
                lblciderr.Text = "Please Select a category";
                check = false;
            }
            else
            {
                lblciderr.Text = "";
            }

            if (txtdesc.Text == "")
            {
                lbldescerr.Text = "Please enter description";
                check = false;
            }
            else
            {
                lbldescerr.Text = "";
            }

            if (txtprice.Text == "")
            {
                lblprierr.Text = "Please enter a valid amount";
                check = false;
            }
            else
            {
                lblprierr.Text = "";
            }

            if (txtprep_t.Text == "")
            {
                lblpreperr.Text = "Please enter the preparation time";
            }
            else
            {
                lblpreperr.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save item")
            {
                check_add_cond();
                if (check)
                {
                    getcon();
                    imgupload();
                    cmd = new SqlCommand("insert into Products(category_id, name, description, price, image, preparation_time)values('" + drpcat.SelectedValue + "','" + txtnm.Text + "','" + txtdesc.Text + "','" + txtprice.Text + "','" + fnm + "','" + txtprep_t.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("admin-menu.aspx");
                }
            }
            else if (Button1.Text == "Edit item")
            {
                check_upd_cond();
                if (check)
                {
                    getcon();
                    if (flpimg.HasFiles == true)
                    {
                        imgupload();
                        cmd = new SqlCommand("update Products set name='" + txtnm.Text + "',category_id='" + drpcat.SelectedValue + "',description='" + txtdesc.Text + "',price='" + txtprice.Text + "',preparation_time='" + txtprep_t.Text + "',image='" + fnm + "' where Id='" + ViewState["Id"] + "'", con);
                        cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        cmd = new SqlCommand("update Products set name='" + txtnm.Text + "',category_id='" + drpcat.SelectedValue + "',description='" + txtdesc.Text + "',price='" + txtprice.Text + "',preparation_time='" + txtprep_t.Text + "' where Id='" + ViewState["Id"] + "'", con);
                        cmd.ExecuteNonQuery();
                    }
                }
                clear();
                Button1.Text = "Save item";
            }
            gridfill();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int pid = Convert.ToInt16(e.CommandArgument);
                ViewState["Id"] = pid;
                filldata();
                Button1.Text = "Edit item";
            }
            else if (e.CommandName == "cmd_dlt")
            {
                int pid = Convert.ToInt16(e.CommandArgument);
                cmd = new SqlCommand("delete from Products where Id='" + pid + "'", con);
                cmd.ExecuteNonQuery();
            }
        }
    }
}