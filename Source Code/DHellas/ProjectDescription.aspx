<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="ProjectDescription.aspx.cs" Inherits="ProjectDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

   <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead"><h2>Our Projects</h2></p>
                <div class="list-group">
                     <asp:Repeater ID="ProjectNames" runat="server">
                        <ItemTemplate>
                            <br />
                        <a href="ProjectDescription.aspx?prodid=<%#Eval("id")%>" class="list-group-item"><%#Eval("ProductName")%></a>
                                               </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

             <asp:Repeater ID="ProjectDetails" runat="server">
                        <ItemTemplate>
            <div class="col-md-9">
                <div class="thumbnail">
                    <img class="img-responsive" src="images/projects/<%#Eval("ProdImage")%>" alt="">
                    <div class="caption-full">
                        <h4 class="pull-right"><a class="alert alert-success">Price: <%#Eval("Price")%>$/system</a></h4>
                        <h2 style="font-size:40px;"><a href="#"><%#Eval("ProductName")%></a>
                        </h2>
                        <h2>Specification:</h2>

<p><b>1.</b>  Persons: <%#Eval("Persons")%></p>
<p><b>2.</b>  Speed: <%#Eval("Speed")%></p>
<p><b>3.</b>  Load: <%#Eval("PLoad")%></p>
<p><b>4.</b>  Traction machine: <%#Eval("TractionMachine")%></p>
<p><b>5.</b>  Machine Roomless(MRL)</p>


                    </div>
                   
                   <br/>
                    <div class="col-lg-12">
                    <br/>
<h2>Advanced Technolgy:</h2><br/>
                <ul id="myTab" class="nav nav-tabs nav-justified">
                    <li class="active"><a href="#service-one" data-toggle="tab"><i class="fa fa-tree"></i>Frequency Converter</a>
                    </li>
                    <li class=""><a href="#service-two" data-toggle="tab"><i class="fa fa-car"></i>VVF Machine System</a>
                    </li>
                    <li class=""><a href="#service-three" data-toggle="tab"><i class="fa fa-support"></i>Curtain Protection</a>
                    </li>
                    <li class=""><a href="#service-four" data-toggle="tab"><i class="fa fa-database"></i>Energy Saving</a>
                    </li>
                </ul>

                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="service-one">
                    <div class="col-md-6"><img class="img-responsive" src="images/projects/AdvancedTechnology/res2.jpg" alt=""></div>
                       <p>Our elevator applies vector-controlled VVVF frequency converter with high prcision speed & current control.It implements an accurate real-time control torque of the host,ensures the smooth lift travel,reduces wear-ability of wire rope and provides the passengers with the best comfort and supreme safety.</p>
                       
                    </div>
                    <div class="tab-pane fade" id="service-two">
               
                        <div class="col-md-6"><img class="img-responsive" src="images/projects/AdvancedTechnology/res3.jpg" alt=""></div>
                       <p>Our elevator combines with multiple energy-saving options.Throgh detailed analysis to various energy consumptions of the elevator,It formulates a full of the effective and scientific energy-saving plans.</p>
                       
                    </div>
                    <div class="tab-pane fade" id="service-three">
                         <div class="col-md-6"><img class="img-responsive" src="images/projects/AdvancedTechnology/res1.jpg" alt=""></div>
                       <p>Our elevators apply the intellectual self-adapting variable frequency door machine system.It uses 32-digit micro-computer control system for fully digitalized operation.It comprehensively increases response speed of door machine and ensures the safe and smooth operation of door machine as well.></p>
                       
                    </div>
                    <div class="tab-pane fade" id="service-four">
                        <div class="col-md-6"><img class="img-responsive" src="images/projects/AdvancedTechnology/res4.jpg" alt=""></div>
                       <p>Our gives first priority to the personnel safety.It uses the sensitive and concentretive infrared light curtain to form optical curtain protection safety net at the lift door. It sensitively reacts to any person or object that enters into the probing plane.It is of high security properties.</p>
                       
                   
                    </div>
                </div>

            <br /><br />
                             </ItemTemplate>
                    </asp:Repeater>    
            <br /><br />
<hr>               

                <div class="well">

                    <div class="text-center">
                
                         <asp:button runat="server"
        Text="ORDER NOW !"
        CssClass="btn btn-success"
        OnClick="Order_Click"/>
                    </div>
          </div>

            </div>

        </div>

    </div>
                           
     </div>

    </div>
    <!-- /.container -->
</asp:Content>

