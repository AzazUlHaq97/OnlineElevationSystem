<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="OrderForm.aspx.cs" Inherits="UserLogin_OrderForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
          <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
       
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
                <h2>Order Details</h2>
            </div> 
                    <div class="col-sm-5 col-sm-offset-1">
                         <div class="form-group">
                            <label>Elevation System Required :</label>
                             <asp:TextBox ID="idfield" runat="server" CssClass="form-control" BackColor="LightGray"  ReadOnly></asp:TextBox>
                           
                        </div>
                        <div class="form-group">
                            <label>Number of System :</label>
                            <asp:TextBox ID="NumberOfSystemRequired" runat="server" CssClass="form-control" MaxLength="2" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" Required>1</asp:TextBox>
                      

                        </div>
                      <br />
                      
                           <div class="form-group">
                                <asp:button runat="server" ID="OrderProcessButton"
        Text="Process my order!"
        CssClass="btn btn-primary btn-lg"
        OnClick="OrderProcess_Click"
        />                             
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Location (where service required) :</label>
                             <asp:TextBox ID="Location" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Address of the place:</label>
                            <asp:TextBox ID="Address" runat="server" CssClass="form-control" Required></asp:TextBox>
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
    <br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

