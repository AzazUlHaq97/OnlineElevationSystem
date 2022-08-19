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


public partial class UserLogin_FinalOrderForm : System.Web.UI.Page
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
        CardNum.Visible = false;
        CardNum1.Visible = false;
        CardName.Visible = false;
        CardName1.Visible = false;
        CVC.Visible = false;
        Month.Visible = false;
        Year.Visible = false;
        CVC1.Visible = false;
        Month1.Visible = false;
        Year1.Visible = false;

        string totalamount = Session["Total Amount"].ToString();
        Cost.Text = totalamount + "$";

        string NameOfElevatorRequired = Session["SelectedProduct"].ToString();
        NameOfElevatorRequired = NameOfElevatorRequired.Replace(" ", "").ToUpper();
        Session["OrderName"] = Session["username"].ToString().ToUpper() + Session["NumOfSysReq"] + NameOfElevatorRequired;

        OrderName.Text = Session["OrderName"].ToString();
    } 
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Value == "CreditCard")
        {
            CardNum.Visible = true;
            CardNum1.Visible = true;
            CardName.Visible = true;
            CardName1.Visible = true;
            CVC.Visible = true;
            Month.Visible = true;
            Year.Visible = true;
            CVC1.Visible = true;
            Month1.Visible = true;
            Year1.Visible = true;
  
        }
    }
    protected void ConfirmOrder_Click(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        Session["DateTime"] = now;

        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var stringChars = new char[8];
        var random = new Random();
        for (int i = 0; i < stringChars.Length; i++)
        {
            stringChars[i] = chars[random.Next(chars.Length)];
        }
        var OrderNumber = new String(stringChars);
        Session["OrderNumber"] = OrderNumber;

        Session["PaymentType"] = DropDownList1.Text;
        connection();
  
      
        if (DropDownList1.SelectedItem.Value == "CreditCard")
        { 
       

            SqlCommand com1 = new SqlCommand("INSERT INTO CreditCardOrders" + "([CardName] ,[CardNum] ,[CVC] ,[ExpiryMonth] ,[ExpiryYear] ,[UserName] ,[OrderNumber]) VALUES (@CardName,@CardNum,@CVC,@Month,@Year,@UserName,@OrderNumber)", con);

         
            com1.Parameters.AddWithValue("@CardName", CardName.Text);
            com1.Parameters.AddWithValue("@CardNum", CardNum.Text);
            com1.Parameters.AddWithValue("@CVC", CVC.Text);
            com1.Parameters.AddWithValue("@Month", Month.Text);
            com1.Parameters.AddWithValue("@Year", Year.Text);
            com1.Parameters.AddWithValue("@UserName", Session["username"].ToString());
            com1.Parameters.AddWithValue("@OrderNumber", OrderNumber);
           
            com1.ExecuteNonQuery();
            Response.Redirect("OrderReciept.aspx");
        }
         
        else
        { 

        try
                {       
        
        Response.Redirect("OrderReciept.aspx");
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
    }
