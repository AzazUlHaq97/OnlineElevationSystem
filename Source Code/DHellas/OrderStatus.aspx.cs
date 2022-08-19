using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin_OrderStatus : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {

 
        connection();
        SqlCommand cmd = new SqlCommand("select * from Orders where OrderNumber = '" + id.Text + "' and OrderedBy ='" + Session["username"] + "'", con);
      
        int count = Convert.ToInt32(cmd.ExecuteScalar());

      try
            {

            if (count > 0)
        {

            connection();
                SqlDataAdapter mycommand = new SqlDataAdapter();
                mycommand.SelectCommand = cmd;

                DataTable dt = new DataTable();
                mycommand.Fill(dt);

                DataListAP.DataSource = dt;
                DataListAP.DataBind();
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