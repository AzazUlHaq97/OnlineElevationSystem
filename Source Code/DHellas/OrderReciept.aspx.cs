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

public partial class UserLogin_OrderReciept : System.Web.UI.Page
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


    protected void COMPLETED(object sender, EventArgs e)
    {



        connection();

        SqlCommand com = new SqlCommand("INSERT INTO Orders" + "([ElevationSystemRequired] ,[NumberOfSystem] ,[LocationName] ,[Address] ,[OrderNumber] ,[OrderName] ,[TotalCost],[OrderStatus] ,[PaymentType] ,[OrderedBy], [DateTime]) VALUES (@EleSysReq,@NumOfSys,@Location,@Address,@OrderNumber,@OrderName,@TotalCost,'Waiting for Admin Approval',@PaymentType,@OrderedBy, @DateTime)", con);


        com.Parameters.AddWithValue("@EleSysReq", Session["SelectedProduct"].ToString());
        com.Parameters.AddWithValue("@NumOfSys", Session["NumOfSysReq"].ToString());
        com.Parameters.AddWithValue("@Location", Session["Location"].ToString());
        com.Parameters.AddWithValue("@Address", Session["Address"].ToString());
        com.Parameters.AddWithValue("@OrderNumber", Session["OrderNumber"].ToString());
        com.Parameters.AddWithValue("@OrderName", Session["OrderName"].ToString());
        com.Parameters.AddWithValue("@TotalCost", Session["Total Amount"].ToString());
        com.Parameters.AddWithValue("@PaymentType", Session["PaymentType"].ToString());
        com.Parameters.AddWithValue("@OrderedBy", Session["username"].ToString());
        com.Parameters.AddWithValue("@DateTime", Session["DateTime"].ToString());
        try
        {
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
"alert('YOUR ORDER HAS BEEN RECIEVED!'); window.location='Index.aspx';", true);
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