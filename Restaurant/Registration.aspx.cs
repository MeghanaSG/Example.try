using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    String gender;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        if (drpgender.SelectedItem.Text == "Male")
        {
            gender = drpgender.SelectedItem.Text;
        }
        else if (drpgender.SelectedItem.Text == "Female")
        {
            gender = drpgender.SelectedItem.Text;
        }
        else 
        {
            gender = drpgender.SelectedItem.Text;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Restaurant"].ConnectionString);
        con.Open();
        String sql = "insert into user_info values('" +txtname.Text + "','" + txtemail.Text + "'," + txtdob.SelectedDate.ToString("yyyy/MM/dd") + ",'" + gender + "','" + txtpass.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        Response.Write("Successfully registered");
        con.Close();
        Response.Redirect("Login.aspx");
    }
}