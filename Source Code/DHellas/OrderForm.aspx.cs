using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin_OrderForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {


            Response.Redirect("Index.aspx?Error=LoginFirst");

        }
        idfield.Text =  Session["SelectedProduct"].ToString();
        
       

    }
    protected void OrderProcess_Click(object sender, EventArgs e)
    {
       
        int NumOfSys = int.Parse(NumberOfSystemRequired.Text);
        int SelectedProductPrice = Convert.ToInt32(Session["SelectedProductPrice"]);
        Session["Total Amount"] = SelectedProductPrice*NumOfSys;
        Session["NumOfSysReq"] = NumOfSys;
    
        Session["Location"] = Location.Text;
        Session["Address"] = Address.Text;
        
     
        Response.Redirect("FinalOrderForm.aspx");
        
    }
}