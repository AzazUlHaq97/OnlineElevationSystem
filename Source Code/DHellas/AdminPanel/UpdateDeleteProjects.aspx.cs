using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_UpdateDeleteProduct : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["image"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    { 
       if (!IsPostBack)
        {

            grid_binding();
        }
               
    }
    public void grid_binding()
    {

        try
        {

            SqlCommand cmd = new SqlCommand("select * from Products;");
            cmd.Connection = con;


            SqlDataAdapter mycommand = new SqlDataAdapter();
            mycommand.SelectCommand = cmd;

            DataTable dt = new DataTable();
            mycommand.Fill(dt);


            GridViewGV.DataSource = dt;
            GridViewGV.DataBind();


            //            Session["id1"] = dt.Rows[0]["id"].ToString(); 
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridViewGV.PageIndex = e.NewPageIndex;

        grid_binding();

    }
    protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cmd.Connection = con;

        string id = GridViewGV.DataKeys[e.RowIndex].Value.ToString();

        cmd.CommandText = "Delete from Products where id='" + id + "';";

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();

        grid_binding();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridViewGV.EditIndex = e.NewEditIndex;

        grid_binding();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
      
        FileUpload ProdImg = GridViewGV.Rows[e.RowIndex].FindControl("ProdImg") as FileUpload;
        
        Session["imgname"] = ProdImg.FileName;
        GridViewRow row = GridViewGV.Rows[e.RowIndex];

        string id = GridViewGV.DataKeys[e.RowIndex].Value.ToString();
        string ProductName = ((TextBox)row.Cells[1].Controls[0]).Text;
        string ProductImage = ProdImg.FileName;
        string Description = ((TextBox)row.Cells[3].Controls[0]).Text;
        string PunchLine = ((TextBox)row.Cells[4].Controls[0]).Text;
        string Persons = ((TextBox)row.Cells[5].Controls[0]).Text;
        string Speed = ((TextBox)row.Cells[6].Controls[0]).Text;
        string PLoad = ((TextBox)row.Cells[7].Controls[0]).Text;
        string TractionMachine = ((TextBox)row.Cells[8].Controls[0]).Text;
        int Price = Convert.ToInt32(((TextBox)row.Cells[9].Controls[0]).Text);

        if (ProdImg.HasFile)
        {
            ProdImg.SaveAs(System.IO.Path.Combine(Server.MapPath("~/images/projects/"), ProductImage));
            cmd.Connection = con;

            cmd.CommandText = "UPDATE [Products]   SET [ProductName] = '" + ProductName + "'      ,[ProdImage] = '" + ProductImage + "'      ,[Description] = '" + Description + "'        ,[PunchLine] = '" + PunchLine + "'   ,[Persons] = '" + Persons + "'      ,[Speed] = '" + Speed + "'     ,[PLoad] = '" + PLoad + "'     ,[TractionMachine] = '" + TractionMachine + "'     ,[Price] = '" + Price + "' WHERE [id] ='" + id + "'";
          
            cmd.Connection.Open();

            cmd.ExecuteNonQuery();

            GridViewGV.EditIndex = -1;

            grid_binding();

            con.Close();
        }
        else
        {
           
            cmd.Connection = con;

            cmd.CommandText = "UPDATE [Products] SET  [ProductName] = '" + ProductName + "'      ,[Description] ='" + Description + "'     ,[PunchLine] = '" + PunchLine + "'     ,[Persons] = '" + Persons + "'      ,[Speed] = '" + Speed + "'      ,[PLoad] = '" + PLoad + "'      ,[TractionMachine] = '" + TractionMachine + "',[Price] = '" + Price + "'  WHERE [id] ='" + id + "'";

            cmd.Connection.Open();

            cmd.ExecuteNonQuery();

            GridViewGV.EditIndex = -1;

            grid_binding();

            con.Close();
        }
  
       


        

      





       

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

        GridViewGV.EditIndex = -1;

        grid_binding();

    }

}