using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data;

public partial class Feedback : System.Web.UI.Page
{
    public SqlConnection con;
    SqlCommand comm;
    string str = null;

    public void connection()
    {

        string constr = ConfigurationManager.ConnectionStrings["image"].ToString();
        con = new SqlConnection(constr);
        con.Open();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {


            Response.Redirect("Index.aspx?Error=LoginFirst");

        }
        Name.Text = Session["UserCurrentlyLogin"].ToString();
        Email.Text =  Session["EmailCurrentlyLogin"].ToString();
    }
    protected void Feedback_Click(object sender, EventArgs e)
    {
        connection();
        SqlCommand com = new SqlCommand("INSERT INTO Feedback" + "([Name] ,[Email] ,[Description] ,[SatisfyingLevel] ,[Problem] ,[Improvement]) VALUES (@Name,@Email,@Description,@SatisfyingLevel,@Problem,@Improvement)", con);

    
        com.Parameters.AddWithValue("@Name", Name.Text);
        com.Parameters.AddWithValue("@Email", Email.Text);
        com.Parameters.AddWithValue("@Description", Description.Text);
        com.Parameters.AddWithValue("@SatisfyingLevel", SatisfyLevel.Text);
        com.Parameters.AddWithValue("@Problem", Problem.Text);
        com.Parameters.AddWithValue("@Improvement", Improvement.Text);
        try
        {
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
 "alert('Your feedback has been submitted!'); window.location='Index.aspx';", true);     
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
}