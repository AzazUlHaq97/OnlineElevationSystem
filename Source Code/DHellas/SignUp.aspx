<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="container">
	<div class="row">
        <div class="span12">
    		<div class="" id="loginModal">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2>Create a New User Account</h2>
              </div>
                
              <div class="modal-body">
                <div class="well">
                  <ul class="nav nav-tabs">
                   
                 
                  </ul>
             
                    <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
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
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>
                        </div>
                              <div class="form-group">
                            <label> Confirm Password:</label>
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>
                        </div>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="ConfirmPassword"
     CssClass="ValidationError"
     ControlToCompare="Password"
     ErrorMessage="Password doesn't match!" 
     ToolTip="Password must be the same" />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    
     ControlToValidate="ConfirmPassword"
     CssClass="ValidationError"
     ToolTip="Compare Password is a REQUIRED field">
    </asp:RequiredFieldValidator>

                           <div class="form-group">
                                <asp:Button ID="btnSignUp" CssClass="btn btn-primary btn-lg" runat="server" Text="Signup" OnClick="Signup_click" /> 
                            
                        </div>

                    </div>
                    <div class="col-sm-5">
                              <div class="form-group">
                            <label>Email:</label>
                            <asp:TextBox ID="Email" runat="server" CssClass="form-control" Required></asp:TextBox>

                        </div>  
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
                        </div>  <br />
                                               
                    </div>

                
               

 
            </div><!--/.row-->
                     
                   
        
            </div>
        </div>
	</div></div>
	</div></div>

    <br /><br />

</asp:Content>

