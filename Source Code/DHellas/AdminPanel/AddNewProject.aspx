<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel-Master.master" AutoEventWireup="true" CodeFile="AddNewProject.aspx.cs" Inherits="AdminPanel_Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Projects
        <small>Adding projects which are available.</small>
      </h1>
      <ol class="breadcrumb">
           <li><a href="#"><i class="fa fa-dashboard"></i> Projects</a></li>
               <li class="active">Add New Project</li>
      </ol>
    </section>
       <br />
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
            <div class="row contact-wrap"> 
                <div style="display: none"></div>
                <asp:Label ID="Label1" runat="server" Text="" CssClass="alert-danger" ></asp:Label>
                    <div class="col-sm-5 col-sm-offset-1">
                       
                                            <div class="form-group">
                            <label>ID</label>
                            <asp:TextBox ID="IDD" runat="server" CssClass="form-control" Readonly>Auto Generated on order submit</asp:TextBox>
                        </div>
                
                        <div class="form-group">
                            <label>Product Name *</label>
                            <asp:TextBox ID="ProdName" runat="server" CssClass="form-control" required></asp:TextBox>
                        </div>
                                <div class="form-group">
                            <label>PunchLine :</label><asp:TextBox ID="PunchLine" runat="server"  CssClass="form-control" required></asp:TextBox>
                           
                        </div>
                        <div class="form-group">
                            <label>Product Image *</label>
                            <asp:FileUpload ID="ProdImg" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <asp:TextBox ID="Description" runat="server" CssClass="form-control" required></asp:TextBox>
                        </div>
                        
                        
                        <br />
                              <div class="form-group">
                                   <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary btn-lg"  onclick="Button1_Click"></asp:Button>
                         
                        </div>

                    </div>
                    <div class="col-sm-5">

                       <div class="form-group">
                            <label>Persons</label>
                            <asp:TextBox ID="Persons" runat="server" CssClass="form-control" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Speed</label>
                            <asp:TextBox ID="Speed" runat="server" CssClass="form-control" required></asp:TextBox>
                        </div>   
                         <div class="form-group">
                            <label>Load</label>
                            <asp:TextBox ID="Load" runat="server" CssClass="form-control" required></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Traction Machine</label>
                             <asp:TextBox ID="TrancMachine" runat="server" CssClass="form-control" required></asp:TextBox>
                        </div> 


                         <div class="form-group">
                            <label>Price</label>
                          <asp:TextBox ID="Price" runat="server" CssClass="form-control" required></asp:TextBox>
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

