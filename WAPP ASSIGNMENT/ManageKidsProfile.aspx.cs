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
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace WAPP_ASSIGNMENT
{
    public partial class ManageKidsProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new
SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            if (!Page.IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from registeration where usertype = '" +
                    member.Text + "'", con);

                DataTable dt = new DataTable();
                da.Fill(dt);
                username.DataSource = dt;
                username.DataTextField = "uname";
                DataBind();
            }

        }

        protected void username_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new
SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //first table
            SqlDataAdapter da = new SqlDataAdapter("select * from registeration where uname = '" +
                    username.Text + "'", con);

            DataTable dt = new DataTable();
            da.Fill(dt);
            id.Text = dt.Rows[0][0].ToString();
            KFname.Text = dt.Rows[0][1].ToString();
            KLname.Text = dt.Rows[0][2].ToString();
            username.Text = dt.Rows[0][3].ToString();
            KAge.Text = dt.Rows[0][4].ToString();
            KEmail.Text = dt.Rows[0][5].ToString();
            KPassword.Text = dt.Rows[0][6].ToString();
            gender.SelectedItem.Text = dt.Rows[0][8].ToString();
            country.Text = dt.Rows[0][9].ToString();

            //Second table
            SqlDataAdapter da2 = new SqlDataAdapter("select * from Quiz where StudentID  = '" +
        id.Text + "'", con);

            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            KLevel.SelectedItem.Text = dt2.Rows[0][1].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new
SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //update first table
            string query = "update registeration set Id ='" + id.Text + "',fname ='" + KFname.Text + "',lname ='" + KLname.Text + "',Age ='" + KAge.Text + "',Email ='" + KEmail.Text + "',pwd ='" + KPassword.Text + "',usertype ='" + member.Text + "',gender ='" + gender.Text + "',Country ='" + country.Text +
                "' where uname = '" + username.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            //update second table
            string query2 = "update Quiz set StudentID ='" + id.Text + "',Level ='" + KLevel.Text +
                "' where StudentID = '" + id.Text + "'";

            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            con.Close()
;
            Response.Redirect("AdminReadPage.aspx");

        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem li = new ListItem();
            li.Text = "F";
            li.Value = "F";
            gender.Items.Add(li);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new
SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //delete first tableRecord
            string query = "delete from registeration where uname ='" + username.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            //delete second tableRecord
            string query2 = "delete from Quiz where StudentID = '" + id.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            con.Close();
            Response.Redirect("AdminReadPage.aspx");
        }
    }
}