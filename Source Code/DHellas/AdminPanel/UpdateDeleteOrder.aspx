<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel-Master.master" AutoEventWireup="true" CodeFile="UpdateDeleteOrder.aspx.cs" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
               <li class="active">Update/Delete order</li>
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
                <asp:BoundField DataField="ElevationSystemRequired" HeaderText="ElevationSystemRequired" />               
                <asp:BoundField DataField="NumberOfSystem" HeaderText="NumberOfSystem" />
                <asp:BoundField DataField="LocationName" HeaderText="LocationName" />
                <asp:BoundField DataField="Address" HeaderText="Address"  />
                <asp:BoundField DataField="OrderNumber" HeaderText="OrderNumber" />
                <asp:BoundField DataField="OrderName" HeaderText="OrderName" />
                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" />
                <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" />
                <asp:BoundField DataField="OrderedBy" HeaderText="OrderedBy" />
                <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" />
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" />
                      
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

<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Details</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
          <!-- /.box -->
   
    <!-- /.content -->
  </div>
</asp:Content>

