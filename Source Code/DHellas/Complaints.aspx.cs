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

public partial class Complaints : System.Web.UI.Page
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
    }

    protected void Complaint_click(object sender, EventArgs e)
    {
        connection();
        SqlCommand comm = new SqlCommand("select * from Orders where OrderedBy ='" + Session["username"] + "' and OrderNumber = '" + OrderNumber.Text + "'", con);
        int count = Convert.ToInt32(comm.ExecuteScalar());
         try
            {

            if (count > 0)
           {
               connection();
               SqlCommand com = new SqlCommand("INSERT INTO Complaints" + "([OrderNumber] ,[ProblemFaced] ,[ComplainingUser]) VALUES (@OrderNumber,@ProblemFaced,@ComplainingUser)", con);


               com.Parameters.AddWithValue("@OrderNumber", OrderNumber.Text);
               com.Parameters.AddWithValue("@ProblemFaced", Complain.Text);
               com.Parameters.AddWithValue("@ComplainingUser", Session["username"] );

               try
               {
                   com.ExecuteNonQuery();
                   ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
        "alert('Your Complaint has been submitted!'); window.location='Index.aspx';", true);
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
            else
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('This order number does not exist!')", true);

            }

                //            Session["id1"] = dt.Rows[0]["id"].ToString(); 
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
         
       
    }
    }
