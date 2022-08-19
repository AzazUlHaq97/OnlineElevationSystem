using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Projects : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=DHellas;User ID=sa;Password=aptech;");

    protected void Page_Load(object sender, EventArgs e)
    {
        string query = "select * from Products";

        SqlCommand cmd = new SqlCommand(query, con);

        try
        {

            con.Open();
            SqlDataAdapter mycommand = new SqlDataAdapter();
            mycommand.SelectCommand = cmd;

            DataTable dt = new DataTable();
            mycommand.Fill(dt);

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}