<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="OrderStatus.aspx.cs" Inherits="UserLogin_OrderStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section id="contact-page">
        <div class="container">
            
            <div class="row contact-wrap"> 
                
                 <div class="center">        
                <h2>Insert your Order Number to get the details</h2>
            </div> 
                    <div class="col-sm-5 col-sm-offset-1">
                         <div class="form-group">
                            <label>Order number :</label>
                             <asp:TextBox ID="id" runat="server" BorderColor="Gray" CssClass="form-control" required></asp:TextBox>
                           
                        </div>
                       
                           <div class="form-group">
                           <asp:Button ID="Button1" runat="server" Text="Fetch my Data" CssClass="btn btn-primary btn-lg"  onclick="Button1_Click"></asp:Button>
                         
                        </div>
                        
                     <br /><br />
        
        
                        <div class="table-responsive">

                    <asp:Repeater ID="DataListAP" runat="server">
                        <ItemTemplate>
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                  
                   <th>OrderNumber</th>
                    <th>ElevationSystemRequired</th>
                    <th>OrderName</th>
                    <th>OrderStatus</th>
                    
                   </thead>
    <tbody>

    <tr>         
    <td><%#Eval("OrderNumber")%></td>   
    <td><%#Eval("ElevationSystemRequired")%></td>       
    <td><%#Eval("OrderName")%></td>
    <td><%#Eval("OrderStatus")%></td>
 
    </tr>
 
    
      
    
   
    
    </tbody>
        
</table>


              </ItemTemplate>
                    </asp:Repeater>
        </div>
                

                    </div>
                 
 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
    <br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

