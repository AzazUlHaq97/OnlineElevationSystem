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

public partial class AdminPanel_Projects : System.Web.UI.Page
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
 
       
        }



          protected void Button1_Click(object sender, EventArgs e)
        {
          


              if (!ProdImg.HasFile)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select the image files.')", true);
               

            }
            else
            {
                int length = ProdImg.PostedFile.ContentLength;
                 
                string prodimg = System.IO.Path.GetFileName(ProdImg.FileName);
                string ext = System.IO.Path.GetExtension(ProdImg.FileName);





                try
                {
                    if (ext == ".jpg" || ext == ".png")
                    {
                        ProdImg.SaveAs(Server.MapPath("~/images/projects/") + prodimg);

                    }
                        connection();
                        
                        SqlCommand commm = new SqlCommand("select count(ProductName)from Products where ProductName='" + ProdName.Text + "'", con);
                   
                        int count2 = Convert.ToInt32(commm.ExecuteScalar());
                      
                        if (count2 > 0)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There is already a product with similar name.')", true);

                        }
                        else
                        {

                            SqlCommand com = new SqlCommand("INSERT INTO Products" + "([ProductName]   ,[ProdImage] , [Description], [PunchLine], [Persons]  ,[Speed] ,[PLoad]  ,[TractionMachine],[Price]) VALUES (@pronam,@proimg,@description,@punchline,@persons,@speed,@load,@trancmachine,@Price)", con);


                           
                            com.Parameters.AddWithValue("@pronam", ProdName.Text);
                            com.Parameters.AddWithValue("@proimg", prodimg);
                            com.Parameters.AddWithValue("@description", Description.Text);
                            com.Parameters.AddWithValue("@punchline", PunchLine.Text);
                            com.Parameters.AddWithValue("@persons", Persons.Text);
                            com.Parameters.AddWithValue("@speed", Speed.Text);
                            com.Parameters.AddWithValue("@load", Load.Text);
                            com.Parameters.AddWithValue("@trancmachine", TrancMachine.Text);                         
                            com.Parameters.AddWithValue("@Price", Price.Text);
                            com.ExecuteNonQuery();

                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record inserted!')", true);
                        }
                    }
                
                finally
                {
                    con.Close();
                }
            }

        }
    }
