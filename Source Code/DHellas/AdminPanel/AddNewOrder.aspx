<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel-Master.master" AutoEventWireup="true" CodeFile="AddNewOrder.aspx.cs" Inherits="AdminPanel_AddNewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Adding a new order
        <small>Adding a new order through this page.</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="AdminPanelHome.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#"><i class="fa fa-dashboard"></i> Order</a></li>
               <li class="active">Adding an order</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
       
  

<div class="container">
	<div class="row">
		
        
        <div class="col-md-16">
       
        <div class="table-responsive">

                
            <section id="contact-page">
        <div class="container">
            <div class="center">        

            </div> 
            <br /><br /><br />
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <div class="contact-form">
                    <asp:Label ID="Error2" CssClass="alert-danger" runat="server" ></asp:Label>
                    <div class="col-sm-5 col-sm-offset-1">
                                <div class="form-group">
                            <label>ID:</label>
                            <asp:TextBox ID="ID" runat="server" CssClass="form-control" Readonly>Auto generated after successful form submission</asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>ElevationSystemRequired:</label>
                  
                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">              
              
                </asp:DropDownList>
             
                         
                        </div>
                        <div class="form-group">
                            <label>NumberOfSystem:</label>
                             <asp:TextBox ID="NumberOfSystem" runat="server" CssClass="form-control" Required  onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>LocationName:</label>
                            <asp:TextBox ID="LocationName" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Address:</label>
                            <asp:TextBox ID="Address" runat="server" CssClass="form-control" Required></asp:TextBox>

                        </div>   
                          <div class="form-group">
                            <label>OrderNumber:</label>
                            <asp:TextBox ID="OrderNumber" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>
                           <div class="form-group">
                         <asp:Button ID="OrderAdd" runat="server" Text="Save" CssClass="btn btn-primary btn-lg" OnClick="OrderAdd_Click" ></asp:Button>
                        </div>

                    </div>
                    <div class="col-sm-5">
                       <div class="form-group">
                            <label>OrderName:</label>
                            <asp:TextBox ID="OrderName" runat="server" CssClass="form-control"  Required></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>TotalCost:</label>
                             <asp:TextBox ID="TotalCost" runat="server" CssClass="form-control" Required  onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;"></asp:TextBox>
                        </div>  
                         <div class="form-group">
                            <label>PaymentType:</label>
                                 <asp:DropDownList ID="PaymentType" runat="server" CssClass="form-control" >              
               <asp:ListItem Text="Payment at door step" Value="CashOnDelivery" Selected="true"></asp:ListItem>
                <asp:ListItem Text="Payment through Credit Card" Value="CreditCard" ></asp:ListItem>
                </asp:DropDownList>
                          
                        </div>
                        <div class="form-group">
                            <label>OrderedBy:</label>
                         <asp:TextBox ID="OrderedBy" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div> 
                        
                               <div class="form-group">
                            <label>OrderStatus:</label>
                         <asp:TextBox ID="OrderStatus" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div> 
                        
                               <div class="form-group">
                            <label>DateTime:</label>
                         <asp:TextBox ID="DateTimeCur" runat="server" CssClass="form-control" ReadOnly></asp:TextBox>
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

  
   
    <!-- /.content -->
  </div>
</asp:Content>

