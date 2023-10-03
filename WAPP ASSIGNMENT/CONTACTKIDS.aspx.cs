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

namespace MASTER
{
    public partial class CONTACTKIDS : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //for new table with zero record
            string query1 = "select count (*) from feedback";
            SqlCommand cmd1 = new SqlCommand(query1, con);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        con.Open();

                        string query = "select count(*) from contact where Email = '" + CEmail.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);



                        int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                        if (check > 0)
                        {
                            errMsg.Visible = true;
                            errMsg.ForeColor = System.Drawing.Color.Red;
                            errMsg.Text = "Sent Successfully";
                        }
                        else
                        {
                            //create record in a table called registeration
                            string query1 = "insert into contact (Name, Email, Contact, Country ) values (@Name, @Email, @Contact, @Country) ";
                            SqlCommand cmd1 = new SqlCommand(query1, con);
                            cmd1.Parameters.AddWithValue("@Name", CName.Text);
                            cmd1.Parameters.AddWithValue("@Email", CEmail.Text);
                            cmd1.Parameters.AddWithValue("@Contact", CContact.Text);
                            cmd1.Parameters.AddWithValue("@Country", CCountry.Text);
                            errMsg.Visible = true;
                            errMsg.Text = ("Successfully sent");
                            cmd1.ExecuteNonQuery();




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
    }

