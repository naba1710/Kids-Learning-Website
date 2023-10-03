using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace WAPP_ASSIGNMENT
{
    public partial class REGISTRATION : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //for new table with zero record
            string query1 = "select count (*) from registeration";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));
            if (record < 1)
            {
                id.Text = "1";
            }
            else
            {
                //for table with record(s)
                string query1a = "select Top 1 Id from registeration order by Id desc";
                SqlCommand cmd1a = new SqlCommand(query1a, con);

                record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                id.Text = record.ToString();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();

                    string query = "select count(*) from registeration where Email = '" + KEmail.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);



                    int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                    if (check > 0)
                    {
                        errMsg.Visible = true;
                        errMsg.ForeColor = System.Drawing.Color.Red;
                        errMsg.Text = "Registered Successfully";
                    }
                    else
                    {
                        //create record in a table called registeration
                        string query1 = "insert into registeration (Id, fname, lname, uname, Age, Email, pwd, usertype, gender, country) values (@id, @fname, @lname, @uname, @Age, @Email, @pwd, @usertype, @gender, @country) ";
                        SqlCommand cmd1 = new SqlCommand(query1, con);
                        cmd1.Parameters.AddWithValue("@Id", id.Text);
                        cmd1.Parameters.AddWithValue("@fname", KFname.Text);
                        cmd1.Parameters.AddWithValue("@lname", KLname.Text);
                        cmd1.Parameters.AddWithValue("@uname", KUsername.Text);
                        cmd1.Parameters.AddWithValue("@Age", KAge.Text);
                        cmd1.Parameters.AddWithValue("@Email", KEmail.Text);
                        cmd1.Parameters.AddWithValue("@pwd", KPassword.Text);
                        cmd1.Parameters.AddWithValue("@usertype", member.Text);
                        cmd1.Parameters.AddWithValue("@gender", gender.Text);
                        cmd1.Parameters.AddWithValue("@country", country.Text);
                        cmd1.ExecuteNonQuery();

                        //create record in a table called QUIZ
                        string query2 = "insert into Quiz (STUDENTID, Level) values (@StudentID, @Level) ";
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd2.Parameters.AddWithValue("@STUDENTID", id.Text);
                        cmd2.Parameters.AddWithValue("@Level", KLevel.Text);
                        cmd2.ExecuteNonQuery();
                        Response.Redirect("login.aspx");


                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Registration not sucessful!" + ex.ToString();
                }
            }

        }
    }
}