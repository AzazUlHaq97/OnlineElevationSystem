using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Header : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //User Login Panel Disabled
        NoLogin.Visible = true;
        UserLogin.Visible = false;
        UserLogin2.Visible = false;
        if (Session["username"] != null)
        {
            Contact.Visible = false;
            SignUp.Visible = false;
            UserLogin.Visible = true;
            UserLogin2.Visible = true;
            NoLogin.Visible = false;
        }

        }
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=DHellas;User ID=sa;Password=aptech;");


    protected void Logout_click(object sender, EventArgs e)
    {
        Response.Redirect("~/destroy.aspx");
    }
    protected void Btn_Click(object sender, EventArgs e)
    {
      
            string b = username.Text;
            string c = password.Text;
     
                SqlCommand cmd = new SqlCommand("select * from Users where Username ='" + b + "' and Password='" + c + "'", con);
                try
                {

                    con.Open();

                    SqlDataAdapter myCommand = new SqlDataAdapter();
                    myCommand.SelectCommand = cmd;
                    // Create and fill a new DataSet.
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    myCommand.Fill(dt);
 



                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["Role"].ToString() == "Admin")
                        {
                            Session["username"] = b;
                            Response.Redirect("~/AdminPanel/AdminPanelHome.aspx");
                        }
                        else
                        {

                            Session["UserCurrentlyLogin"] = dt.Rows[0]["Name"].ToString();
                            Session["EmailCurrentlyLogin"] = dt.Rows[0]["Email"].ToString();
                            Session["username"] = b;
                            Contact.Visible = false;
                            SignUp.Visible = false;
                            UserLogin.Visible = true;
                            UserLogin2.Visible = true;
                            NoLogin.Visible = false;
                           
                        }



                    }

                    else
                    {
                        UserLogin.Visible = false;
                        UserLogin2.Visible = false;
                        NoLogin.Visible = true;
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Username or Password!')", true);
                    }

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
 
