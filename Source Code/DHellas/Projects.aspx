<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><font color="#999999">D'Hellas Projects</font>
                    <small>Have a look at the amazing lifts projects offered by D'Hellas.</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->





        <!-- Project One -->
          <asp:Repeater ID="DataList1" runat="server">
                        <ItemTemplate>
        <div class="row">
            <div class="col-md-7">
                <a href="#">
                    <img class="img-responsive" src="images/projects/<%#Eval("ProdImage")%>" alt="">
                </a>
            </div>
            <div class="col-md-5">
                <h2><%#Eval("ProductName")%></h2>
                <h3><%#Eval("PunchLine")%></h3>
                <p><%#Eval("Description")%></p>
                <a class="btn btn-primary" href="ProjectDescription.aspx?prodid=<%#Eval("id")%>">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
                            <hr>
                                </ItemTemplate>
                    </asp:Repeater>
        <!-- /.row -->

        




        </div>

</asp:Content>

