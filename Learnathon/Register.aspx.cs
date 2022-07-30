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
    public partial class Register : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadInstructor.Checked)
            {
                
                    SignUpNewStudent();
                    ClearBox();
                

            }
            else if (RadStudent.Checked)
            {
                
                    SignUpNewteacher();
                    ClearBox();
              
            }
            else
            {
                Response.Write("<script>alert('Select the check boxes');</script>");
            }

            

            void SignUpNewStudent()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO Student (FullName,Username,Pass) values (@FullName,@Username,@Pass)", con);
                    cmd.Parameters.AddWithValue("@FullName", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@Pass", TextBox9.Text.Trim());
                   

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Sign Up Successfully.  Go to User Log In Page to Log In');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

            void SignUpNewteacher()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO Instructor (FullName,Username,Pass) values (@FullName,@Username,@Pass)", con);
                    cmd.Parameters.AddWithValue("@FullName", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@Pass", TextBox9.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Sign Up Successfully.  Go to User Log In Page to Log In');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

            void ClearBox()
            {
                TextBox1.Text = "";
                TextBox8.Text = null;
                TextBox9.Text = null;
                

            }
        }
    }
}