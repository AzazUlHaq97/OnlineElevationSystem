<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel-Master.master" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="AdminPanel_AddNewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                       <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Adding a user
        <small>Adding a new user through this page.</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="AdminPanelHome.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#"><i class="fa fa-user"></i> User</a></li>
               <li class="active">Adding a user</li>
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
                            <label>Name:</label>
                            <asp:TextBox ID="Name" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Username:</label>
                             <asp:TextBox ID="Username" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" Required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Email:</label>
                            <asp:TextBox ID="Email" runat="server" CssClass="form-control" Required></asp:TextBox>

                        </div>   
                           <div class="form-group">
                         <asp:Button ID="UserAdd" runat="server" Text="Save" CssClass="btn btn-primary btn-lg"  onclick="UserAdd_Click"></asp:Button>
                        </div>

                    </div>
                    <div class="col-sm-5">
                       <div class="form-group">
                            <label>Contact:</label>
                            <asp:TextBox ID="Contact" runat="server" CssClass="form-control" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" Required></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Address:</label>
                             <asp:TextBox ID="Address" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>  
                         <div class="form-group">
                            <label>Company:</label>
                           <asp:TextBox ID="Company" runat="server" CssClass="form-control" Required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Role: (Only users account can be created)</label>
                         <asp:TextBox ID="Role" runat="server" CssClass="form-control" ReadOnly>User</asp:TextBox>
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

