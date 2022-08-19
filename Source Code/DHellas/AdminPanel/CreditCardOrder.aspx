﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel-Master.master" AutoEventWireup="true" CodeFile="CreditCardOrder.aspx.cs" Inherits="AdminPanel_CreditCardOrder_aspx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Orders
        <small>All the recieved and completed orders.</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="AdminPanelHome.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#"><i class="fa fa-dashboard"></i> Order</a></li>
               <li class="active">Credit Card Order</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
       
  

<div class="container">
	<div class="row">
		
        
        <div class="col-md-15">
        <h4>All orders</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">

    <tbody>
         <asp:GridView  DataKeyNames="ID"  runat="server" CssClass="table table-bordred table-striped" ID="GridViewGV" AutoGenerateColumns="False" OnRowDeleting="GV_RowDeleting" OnRowEditing="GridView1_RowEditing"

OnRowUpdating="GridView1_RowUpdating"

OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" CellPadding="1" ForeColor="#333333" GridLines="None" >
                                            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID"  readonly="true"/>
                <asp:BoundField DataField="CardName" HeaderText="CardName" />               
                <asp:BoundField DataField="CardNum" HeaderText="CardNum" />
                <asp:BoundField DataField="CVC" HeaderText="CVC" />
                <asp:BoundField DataField="ExpiryMonth" HeaderText="ExpiryMonth" />               
                <asp:BoundField DataField="ExpiryYear" HeaderText="ExpiryYear" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" />
                <asp:BoundField DataField="OrderNumber" HeaderText="OrderNumber" />              
                      
                <asp:CommandField ShowEditButton="True" HeaderText="Update" ControlStyle-CssClass="btn btn-primary btn-xs"/>
                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ControlStyle-CssClass="btn btn-danger btn-xs"/>
                                            </Columns>
                                              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#050514"  BorderColor="#66b3ff" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB"  />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
                                        </asp:GridView>


   
   
    
    </tbody>
        
</table>


            
        </div>
	</div>
</div>
     </div>
      </div>
    </section> 

   
    <!-- /.content -->
  </div>
</asp:Content>



