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
    public partial class ModifyCourses : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void updateCourse()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Course SET title=@title where ID='" + TextBox3.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("username", TextBox3.Text.Trim());
                cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd = new SqlCommand("UPDATE Course SET Content=@content where ID='" + TextBox4.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("username", TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();


                con.Close();
                Response.Write("<script>alert('Updated Successfully!!!')</script>");

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            updateCourse();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            AddCourse();
        }
        void AddCourse()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Course (title,content) values (@title,@content)", con);

                
                cmd.Parameters.AddWithValue("@title", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@content", TextBox4.Text.Trim());
               


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Post Created...!!  👍👍👍');</script>");
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}