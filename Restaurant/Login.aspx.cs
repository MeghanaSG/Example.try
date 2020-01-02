using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "admin" && txtpass.Text == "admin")
        {
            Response.Redirect("Admin_View.aspx");
        }
        else
        {
            Session["name"] = txtname.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Restaurant"].ConnectionString);
            con.Open();
            String sql = "select * from user_info where uname='" + txtname.Text + "' and pass='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("User_View.aspx");
            }
        }
    }
}