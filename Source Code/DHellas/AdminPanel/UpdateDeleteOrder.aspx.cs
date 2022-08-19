using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Orders : System.Web.UI.Page
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

            SqlCommand cmd = new SqlCommand("select * from Orders");
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

        cmd.CommandText = "Delete from Orders where ID='" + id + "'";

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
      
        
        
        
        GridViewRow row = GridViewGV.Rows[e.RowIndex];

        string id = GridViewGV.DataKeys[e.RowIndex].Value.ToString();

        string ElevationSystemRequired = ((TextBox)row.Cells[1].Controls[0]).Text;
        string NumberOfSystem = ((TextBox)row.Cells[2].Controls[0]).Text;
        string LocationName = ((TextBox)row.Cells[3].Controls[0]).Text;
        string Address = ((TextBox)row.Cells[4].Controls[0]).Text;
        string OrderNumber = ((TextBox)row.Cells[5].Controls[0]).Text;
        string OrderName = ((TextBox)row.Cells[6].Controls[0]).Text;
        string TotalCost = ((TextBox)row.Cells[7].Controls[0]).Text;
        string PaymentType = ((TextBox)row.Cells[8].Controls[0]).Text;
        string OrderedBy = ((TextBox)row.Cells[9].Controls[0]).Text;
        string OrderStatus = ((TextBox)row.Cells[10].Controls[0]).Text;
        string DateTime = ((TextBox)row.Cells[11].Controls[0]).Text;



            cmd.Connection = con;

            cmd.CommandText = "UPDATE Orders SET  [ElevationSystemRequired] = '" + ElevationSystemRequired + "'      ,[NumberOfSystem] = '" + NumberOfSystem + "'      ,[LocationName] ='" + LocationName + "'     ,[Address] = '" + Address + "'     ,[OrderNumber] = '" + OrderNumber + "'      ,[OrderName] = '" + OrderName + "'      ,[TotalCost] = '" + TotalCost + "'      ,[PaymentType] = '" + PaymentType + "'     ,[OrderedBy] = '" + OrderedBy + "'         ,[OrderStatus] = '" + OrderStatus + "'      ,[DateTime] = '" + DateTime + "'  where [ID] ='" + id + "'";

            cmd.Connection.Open();

            cmd.ExecuteNonQuery();

            GridViewGV.EditIndex = -1;

            grid_binding();

            con.Close();
       
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

        GridViewGV.EditIndex = -1;

        grid_binding();

    }

}