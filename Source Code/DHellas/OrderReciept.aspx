<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="OrderReciept.aspx.cs" Inherits="UserLogin_OrderReciept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script type="text/javascript">

       

             window.onbeforeunload = confirmExit;

             function confirmExit() {

                 return "Are you sure you want to continue?";
             }


          
         
            


</script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   <br />
    <div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>D'Hellas</strong>
                        <br>
                        Username: <% Response.Write(Session["username"]); %>
                        <br>
                       Order #: <% Response.Write(Session["OrderNumber"]); %> 
                        <br>
                        <abbr title="Phone">P:</abbr> (123) 456-7090
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date and time : <% Response.Write(Session["DateTime"]); %></em>
                    </p>
                    <p>
                        <em>Order Name : <% Response.Write(Session["OrderName"]); %></em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h2>Order Summary</h2>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em><% Response.Write(Session["SelectedProduct"]); %></em></h4></td>
                            <td class="col-md-1" style="text-align: center"> <% Response.Write(Session["NumOfSysReq"]); %> </td>
                            <td class="col-md-1 text-center"> <% Response.Write(Session["SelectedProductPrice"]); %>$</td>
                            <td class="col-md-1 text-center"> <% Response.Write(Session["Total Amount"]); %>$</td>
                        </tr>
                       
                   
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td>   </td>
                        </tr>
                    </tbody>
                </table>

                <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg btn-block" Text="Saved your Order code? Click Here!" OnClick="COMPLETED"/>
</td>
            </div>
        </div>
    </div></div>
     <br />
   <br /><br /><br /><br />
</asp:Content>

