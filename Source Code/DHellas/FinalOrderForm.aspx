<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="FinalOrderForm.aspx.cs" Inherits="UserLogin_FinalOrderForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <!-- Main content -->
    <section class="content">
      <div class="row">
        
  

<div class="container">
	<div class="row">
		
        
        <div class="col-md-16">
       
        <div class="table-responsive">

                
            <section id="contact-page">
        <div class="container">
          
            <div class="row contact-wrap">                  
           <div class="center">        
                <h2>Order Details</h2> <%Response.Write(Session["Location"]); %>
            </div> 
                    <div class="col-sm-5 col-sm-offset-1">
                         <div class="form-group">
                            <label>Order Name :</label>
                             <asp:TextBox ID="OrderName" runat="server" CssClass="form-control"  ReadOnly></asp:TextBox>
                           
                        </div>
                        <div class="form-group">
                            <label>Cost (Number of System * Per system cost) :</label> 
                            <asp:TextBox ID="Cost" runat="server" CssClass="form-control" MaxLength="2" ReadOnly onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"></asp:TextBox>
                      

                        </div>
                      <br />
                      
                           <div class="form-group">
                               <asp:Button ID="ConfirmOrder" class="btn btn-primary btn-lg" runat="server" Text="Confirm my order!" OnClick="ConfirmOrder_Click" />
                             
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Order Status :</label>
                             <asp:TextBox ID="OrderStatus" runat="server" CssClass="form-control" ReadOnly>Waiting to be submitted!</asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Payment Type:</label>
                             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">

                <asp:ListItem Text="Payment at door step" Value="CashOnDelivery" Selected="true"></asp:ListItem>
                <asp:ListItem Text="Payment through Credit Card" Value="CreditCard" ></asp:ListItem>
                
</asp:DropDownList>                            
                        </div>
                          <div class="form-group">
                             <label> <asp:Label ID="CardName1" runat="server"   Text="Name on Card  :"></asp:Label>  </label>
                          
                            <asp:TextBox ID="CardName" runat="server" CssClass="form-control" Required ></asp:TextBox>
                        </div>
                             <div class="form-group">
                            <label><asp:Label ID="CardNum1" runat="server"   Text="Card Number  :"></asp:Label>  </label>
                            <asp:TextBox ID="CardNum" runat="server" CssClass="form-control" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" Required></asp:TextBox>
                        </div>
                           
              <div class='col-xs-4 form-group cvc required'>
                <label>  <asp:Label ID="CVC1" runat="server"   Text="CVC :"></asp:Label>  </label>
                 <asp:TextBox ID="CVC" runat="server"  class='form-control card-cvc' placeholder='ex. 311' MaxLength="3" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" Required></asp:TextBox>
              </div>
              <div class='col-xs-4 form-group expiration required'>
               <label> <asp:Label ID="Month1" runat="server"   Text="Expiration Month:"></asp:Label>  </label>
             <asp:TextBox ID="Month" runat="server"  class='form-control card-cvc' placeholder='MM' MaxLength="2" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" Required></asp:TextBox>
              </div>
              <div class='col-xs-4 form-group expiration required'>
             <label>  <asp:Label ID="Year1" runat="server"   Text="Expiration Year :"></asp:Label>  </label>
              <asp:TextBox ID="Year" runat="server"  class='form-control card-cvc' placeholder='YYYY' MaxLength="4" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" Required></asp:TextBox>
              </div>
       
                        <br />
                           
                    </div>

                
              

 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->


            
        </div>
	</div>
</div>
     </div>
      </div>
    </section> 
    <br /><br /><br /><br /><br /><br />
         

</asp:Content>

