<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

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
                <h2>Feedback</h2>
            </div> 
                    <div class="col-sm-5 col-sm-offset-1">
                         <div class="form-group">
                            <label>Name :</label>
                             <asp:TextBox ID="Name" runat="server" CssClass="form-control" Required></asp:TextBox>
                           
                        </div>
                        <div class="form-group">
                            <label>Email :</label>
                            <asp:TextBox ID="Email" runat="server" CssClass="form-control" Required></asp:TextBox>
                      

                        </div>
                           <div class="form-group">
                            <label>Description :</label>
                            <asp:TextBox ID="Description" runat="server" CssClass="form-control" Required></asp:TextBox>
                      

                        </div>
                      <br />
                      
                           <div class="form-group">
                                <asp:button runat="server"
        Text="Process my order!"
        CssClass="btn btn-primary btn-lg"
        OnClick="Feedback_Click"/>                             
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Satisfying Level :</label>
                               <asp:DropDownList ID="SatisfyLevel" runat="server" CssClass="form-control" AutoPostBack="true">
               <asp:ListItem Text="Good" Value="Good" Selected="true"></asp:ListItem>
                <asp:ListItem Text="Average" Value="Average" ></asp:ListItem>
                  <asp:ListItem Text="Satisfactory" Value="Satisfactory"></asp:ListItem>
                <asp:ListItem Text="Poor" Value="Poor" ></asp:ListItem>
                
</asp:DropDownList>   
                        </div>
                        <div class="form-group">
                            <label>Problem, if faced:</label>
                            <asp:TextBox ID="Problem" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                           <div class="form-group">
                            <label>Improvement, if required:</label>
                            <asp:TextBox ID="Improvement" runat="server" CssClass="form-control"></asp:TextBox>
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

