<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="Complaints.aspx.cs" Inherits="Complaints" %>

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
                <h2>Complaints</h2>
            </div> 
                    <div class="col-sm-5 col-sm-offset-1">
                         <div class="form-group">
                            <label>Order Number :</label>
                             <asp:TextBox ID="OrderNumber" runat="server" CssClass="form-control" MaxLength="8"  BorderColor="LightGray" Required></asp:TextBox>
                           
                        </div>
                        <div class="form-group">
                            <label>Complaints :</label>
                            <asp:TextBox ID="Complain" runat="server"  TextMode="multiline"  BorderColor="LightGray" Columns="50" Rows="5" CssClass="form-control" Required></asp:TextBox>
                      

                        </div>
                      
                      <br />
                      
                           <div class="form-group">
                                <asp:button runat="server"
        Text="Submit my complain!"
        CssClass="btn btn-primary btn-lg"
       OnClick="Complaint_click"
                                    
     />                             
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
    <br /><br /><br /><br /><br /><br />

</asp:Content>

