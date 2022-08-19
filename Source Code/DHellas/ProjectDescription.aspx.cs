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

public partial class ProjectDescription : System.Web.UI.Page
{

    
   

    protected void Page_Load(object sender, EventArgs e)
    {
        
        string ProductID = Request.QueryString["prodid"];
        if (ProductID == null)
        {
            Response.Redirect("Projects.aspx?Message=PleaseSelectAnyOneProject");

        }
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=DHellas;User ID=sa;Password=aptech;");
        string query = "select * from Products where id ='" + ProductID + "'";
        string query2 = "select * from Products";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlCommand cmd2 = new SqlCommand(query2, con);

        try
        {

            con.Open();
            SqlDataAdapter mycommand = new SqlDataAdapter();
            SqlDataAdapter mycommand2 = new SqlDataAdapter();
            mycommand.SelectCommand = cmd;
            mycommand2.SelectCommand = cmd2;

            DataTable dt = new DataTable();
            mycommand.Fill(dt);
            Session["SelectedProduct"] = dt.Rows[0]["ProductName"].ToString();
            Session["SelectedProductPrice"] = dt.Rows[0]["Price"].ToString();

            DataTable dt2 = new DataTable();
            mycommand2.Fill(dt2);

            ProjectNames.DataSource = dt2;
            ProjectNames.DataBind();

             ProjectDetails.DataSource = dt;
            ProjectDetails.DataBind();
          
         
        
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
 
    protected void Order_Click(object sender, EventArgs e)
    {
        if (Session["username"]==null)
       {
           ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
"alert('YOU MUST LOGIN TO ORDER!'); window.location='SignUp.aspx';", true);
   
        }
        else
        {
            Response.Redirect("OrderForm.aspx");
          
        }
    }
    
}