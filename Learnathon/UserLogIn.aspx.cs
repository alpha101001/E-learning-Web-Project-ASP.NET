using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Learnathon
{
    public partial class UserLogIn : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Username"] != null && Request.Cookies["Pass"] != null)
                {
                    TextBox1.Text = Request.Cookies["Username"].Value;
                    TextBox2.Attributes["value"] = Request.Cookies["Pass"].Value;
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd =
                    new SqlCommand(
                        "select * from Instructor where Username='" + TextBox1.Text.Trim() + "' and Pass='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["Username"].Value = TextBox1.Text;
                        Response.Cookies["Pass"].Value = TextBox2.Text;
                        Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies["Pass"].Expires = DateTime.Now.AddMinutes(1);
                    }
                    else
                    {
                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Pass"].Expires = DateTime.Now.AddDays(-1);
                    }


                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Log In Successfull.');</script>");
                        Session["Inid"] = dr.GetValue(2).ToString();
                        Session["username"] = dr.GetValue(2).ToString();
                        Session["role"] = "instructor";
                    }

                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Info');</script>");
                }
            }
            catch (Exception ex)
            {


            }


        }








        protected void Button2_Click(object sender, EventArgs e)
        {
             try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from student where Username='" + TextBox1.Text.Trim() + "' and Pass='" + TextBox2.Text.Trim() + "';", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        if (CheckBox1.Checked)
                        {
                            Response.Cookies["Username"].Value = TextBox1.Text;
                            Response.Cookies["Pass"].Value = TextBox2.Text;
                            Response.Cookies["Username"].Expires = DateTime.Now.AddMinutes(1);
                            Response.Cookies["Pass"].Expires = DateTime.Now.AddMinutes(1);
                        }
                        else
                        {
                            Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies["Pass"].Expires = DateTime.Now.AddDays(-1);
                        }


                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Log In Successfull.');</script>");
                            Session["stid"] = dr.GetValue(0).ToString();
                            Session["username"] = dr.GetValue(2).ToString();
                            Session["role"] = "student";
                        }
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Info');</script>");
                    }
                }
                catch (Exception ex)
                {


                }
            
            

        }
    }
}