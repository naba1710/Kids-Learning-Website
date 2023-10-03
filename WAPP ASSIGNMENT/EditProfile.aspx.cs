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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!Page.IsPostBack)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    //first table
                    SqlDataAdapter da = new SqlDataAdapter("select * from registeration where Email = '"
                        + Session["Email"] + "'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    id.Text = dt.Rows[0][0].ToString();
                    KFname.Text = dt.Rows[0][1].ToString();
                    KLname.Text = dt.Rows[0][2].ToString();
                    KAge.Text = dt.Rows[0][4].ToString();
                    KEmail.Text = dt.Rows[0][5].ToString();
                    KPassword.Text = dt.Rows[0][6].ToString();
                    usertype.Text = dt.Rows[0][7].ToString();
                    gender.SelectedItem.Text = dt.Rows[0][8].ToString();
                    country.Text = dt.Rows[0][9].ToString();


                //second table
                SqlDataAdapter da2 = new SqlDataAdapter("select * from Quiz where StudentID = '"
                        + id.Text + "'", con);
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);
                    KLevel.SelectedItem.Text = dt2.Rows[0][1].ToString();

            }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            //update first table
            string query = "update registeration set Id ='" + id.Text + "',fname ='" + KFname.Text + "',lname ='"
                + KLname.Text + "',Age ='" + KAge.Text + "',pwd ='" + KPassword.Text + "',usertype ='" + usertype.Text + "',gender ='" + gender.Text + "',country ='" + country.Text + "' where Email = '" + KEmail.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            

            //update second table
            string query2 = "update Quiz set Level ='" + KLevel.Text + "' where StudentID = '" + id.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            errMsg.Visible = true;
            errMsg.Text = query + query2;
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("KidsView.aspx");


        }
    }
    }