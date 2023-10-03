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
    public partial class ADMINLOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                if (!Page.IsPostBack)
                {
                    username.Attributes.Add("autocomplete", "off");
                    password.Attributes.Add("autocomplete", "off");
                }

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from adminlogin where Username = '" + username.Text
                              + "' and Password = '" + password.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            Response.Write(count.ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select usertype from adminlogin where Username = '" + username.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                string Username = username.Text;
                Session["Usertype"] = type;
                Session["utype"] = "member";
                

                if (type == "admin")
                    Response.Redirect("admin.aspx");
                else if (type == "member")
                    Response.Redirect("EditProfile.aspx");
            }
            else
            {
                this.errorMsg.Visible = true;
                this.errorMsg.ForeColor = System.Drawing.Color.DarkGreen;
                Label2.Text = "Incorrect Email or Password";
                return;
            }
            con.Close();

        }
    }
}