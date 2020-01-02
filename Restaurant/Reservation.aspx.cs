using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Reservation : System.Web.UI.Page
{
    String food, occasion, persons,status;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreserve_Click(object sender, EventArgs e)
    {
        if(drpperson.SelectedItem.Text=="100")
        {
            persons=drpperson.SelectedItem.Text;
        }
        else if(drpperson.SelectedItem.Text=="200")
        {
            persons=drpperson.SelectedItem.Text;
        }
        else if(drpperson.SelectedItem.Text=="300")
        {
            persons=drpperson.SelectedItem.Text;
        }
        else if(drpperson.SelectedItem.Text=="400")
        {
            persons=drpperson.SelectedItem.Text;
        }

        if(drpfood.SelectedItem.Text=="Indian")
        {
            food=drpfood.SelectedItem.Text;
        }
        else if(drpfood.SelectedItem.Text=="Continental")
        {
            food=drpfood.SelectedItem.Text;
        }
        else if(drpfood.SelectedItem.Text=="Mexican")
        {
            food=drpfood.SelectedItem.Text;
        }

        if(drpoccasion.SelectedItem.Text=="Wedding")
        {
            occasion=drpfood.SelectedItem.Text;
        }
        else if(drpoccasion.SelectedItem.Text=="Birthday")
        {
            occasion=drpoccasion.SelectedItem.Text;
        }
        else if(drpoccasion.SelectedItem.Text=="Anniversary")
        {
            occasion=drpfood.SelectedItem.Text;
        }
        status="Not Reserved";
        if (txtname.Text == Session["name"].ToString())
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Restaurant"].ConnectionString);
            con.Open();
            String sql = "insert into user_reserve values('" + txtname.Text + "','" + txtemail.Text + "'," + txtphone.Text + ",'" + txttime.Text + "','" + persons + "','" + txtdate.Text + "','" + food + "','" + occasion + "','" + status + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            Response.Write("Successfully registered");
            con.Close();
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Write("<script language=javascript>alert('Data Not registered');</script>");
        }
    }
}