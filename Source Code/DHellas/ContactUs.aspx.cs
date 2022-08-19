using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {


            Response.Redirect("Index.aspx?Error=CanNotAccessWhileUserLogin");

        }

    }
    protected void Contact_Click(object sender, EventArgs e)
    {

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your message has been recieved!')", true);

    }
 

}