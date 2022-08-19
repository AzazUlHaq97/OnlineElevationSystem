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


public partial class AdminPanel_AddNewOrder : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();

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

        if (!IsPostBack)
        {
        

            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();
            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }
            var OrderNumberr = new String(stringChars);
            OrderNumber.Text = OrderNumberr;

            DateTime now = DateTime.Now;
            Session["DT"] = now;
            DateTimeCur.Text = Session["DT"].ToString();
            grid_binding();
        }
    }
   
    public void grid_binding()
    {
        DataTable dt = new DataTable();

        string ProdName = string.Empty;


        try
        {
            connection();
            SqlCommand cmd = new SqlCommand("select * from Products");
            cmd.Connection = con;


            SqlDataAdapter mycommand = new SqlDataAdapter();
            mycommand.SelectCommand = cmd;


            mycommand.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ProdName = dt.Rows[i]["ProductName"].ToString();


                    DropDownList1.Items.Add(new ListItem(ProdName));
                }
            }



            //            Session["id1"] = dt.Rows[0]["id"].ToString(); 
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            con.Close();
        }
    }


    protected void OrderAdd_Click(object sender, EventArgs e)
    {


        connection();
        SqlCommand comm = new SqlCommand("select * from Orders where OrderNumber ='" + OrderNumber.Text + "'", con);
        int count = Convert.ToInt32(comm.ExecuteScalar());
        if (count > 0)
        {
            Error2.Text = "OrderNumber already exists!";

        }
        else
        {
            connection();
            SqlCommand com = new SqlCommand("INSERT INTO Orders" + "([ElevationSystemRequired] ,[NumberOfSystem] ,[LocationName],[Address],[OrderNumber],[OrderName],[TotalCost],[OrderStatus],[PaymentType],[OrderedBy],[DateTime]) VALUES (@ElevationSystemRequired,@NumberOfSystem,@LocationName,@Address,@OrderNumber,@OrderName,@TotalCost,@OrderStatus,@PaymentType,@OrderedBy,@DateTimeCur)", con);
            com.Parameters.AddWithValue("@ElevationSystemRequired", DropDownList1.Text);
            com.Parameters.AddWithValue("@NumberOfSystem", NumberOfSystem.Text);
            com.Parameters.AddWithValue("@LocationName", LocationName.Text);
            com.Parameters.AddWithValue("@Address", Address.Text);
            com.Parameters.AddWithValue("@OrderNumber", OrderNumber.Text);
            com.Parameters.AddWithValue("@OrderName", OrderName.Text);
            com.Parameters.AddWithValue("@TotalCost", TotalCost.Text);
            com.Parameters.AddWithValue("@PaymentType", PaymentType.Text);
            com.Parameters.AddWithValue("@OrderedBy", OrderedBy.Text);
            com.Parameters.AddWithValue("@OrderStatus", OrderStatus.Text);
            com.Parameters.AddWithValue("@DateTimeCur", DateTimeCur.Text);

            if (PaymentType.SelectedItem.Value == "CreditCard")
            {


                SqlCommand comm1 = new SqlCommand("select * from CreditCardOrders", con);
            
                SqlCommand com1 = new SqlCommand("INSERT INTO CreditCardOrders" + "([CardName] ,[CardNum] ,[CVC] ,[ExpiryMonth] ,[ExpiryYear] ,[UserName] ,[OrderNumber]) VALUES (@CardName,@CardNum,@CVC,@Month,@Year,@UserName,@OrderNumber)", con);

   
                com1.Parameters.AddWithValue("@CardName", CardName.Text);
                com1.Parameters.AddWithValue("@CardNum", CardNum.Text);
                com1.Parameters.AddWithValue("@CVC", CVC.Text);
                com1.Parameters.AddWithValue("@Month", Month.Text);
                com1.Parameters.AddWithValue("@Year", Year.Text);
                com1.Parameters.AddWithValue("@UserName", OrderedBy.Text);
                com1.Parameters.AddWithValue("@OrderNumber", OrderNumber.Text);

                com1.ExecuteNonQuery();




                try
                {
                    com.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Order Inserted in both tables!')", true);
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
                try
                {
                    com.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New Order Inserted!')", true);
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
}
