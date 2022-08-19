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


public partial class SignUp : System.Web.UI.Page
{
    public SqlConnection conb2;


    public void connection()
    {

        string constr = ConfigurationManager.ConnectionStrings["image"].ToString();
        conb2 = new SqlConnection(constr);
        conb2.Open();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {


            Response.Redirect("Index.aspx?Error=CanNotAccessWhileUserLogin");

        }
    }



    protected void Signup_click(object sender, EventArgs e)
    {
        connection();
        SqlCommand comm = new SqlCommand("select * from Users where Username ='" + Username.Text + "'", conb2);
        int count = Convert.ToInt32(comm.ExecuteScalar());
        if (count > 0)
        {
            Error2.Text = "Username already exists!";

        }
        else
        {
            connection();
            SqlCommand com = new SqlCommand("INSERT INTO Users" + "([Name] ,[Username] ,[Password],[Email],[Contact],[Address],[Company],[Role]) VALUES (@Name,@Username,@Password,@Email,@Contact,@Address,@Company,'User')", conb2);
            com.Parameters.AddWithValue("@Name", Name.Text);
            com.Parameters.AddWithValue("@Username", Username.Text);
            com.Parameters.AddWithValue("@Password", Password.Text);
            com.Parameters.AddWithValue("@Email", Email.Text);
            com.Parameters.AddWithValue("@Contact", Contact.Text);
            com.Parameters.AddWithValue("@Address", Address.Text);
            com.Parameters.AddWithValue("@Company", Company.Text);

            try
            {
                com.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
     "alert('Your account has been created!'); window.location='Index.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conb2.Close();
            }

        }
    }
}