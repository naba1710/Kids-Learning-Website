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
    public partial class KIDLOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KLoginEmail.Attributes.Add("autocomplete", "off");
                KLoginPwd.Attributes.Add("autocomplete", "off");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("KIDSREGISTRATION.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from registeration where Email = '" + KLoginEmail.Text
                              + "' and pwd = '" + KLoginPwd.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            Response.Write(count.ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select usertype from registeration where Email = '" + KLoginEmail.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                string Email = KLoginEmail.Text;
                Session["usertype"] = type;
                Session["utype"] = "member";
                Session["Email"] = KLoginEmail.Text;

                if (type == "admin")
                    Response.Redirect("ADMINLOGIN.aspx");
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
    
