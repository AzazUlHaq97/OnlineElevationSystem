<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <section id="contact-info">
        <div class="center">                
            <h2>How to Reach Us?</h2>
            <p class="lead">Follow any of our offices or fill the contact form to reach us.</p>
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap">
                            <iframe width="425"
                                    height="350"
                                    frameborder="0"
                                    scrolling="no"
                                    marginheight="0"
                                    marginwidth="0"
                                    src="https://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=333+E+34th+St,+New+York,+NY&aq=1&oq=333&sll=37.269174,-119.306607&sspn=16.742323,33.815918&ie=UTF8&hq=&hnear=333+E+34th+St,+New+York,+10016&t=m&z=14&ll=40.744403,-73.974467&output=embed"></iframe>
                        </div>
                    </div>

                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>Head Office</h5>
                                    <p>333 East <br>
                                    34th Street</p>
                                    <p>Phone:0123 456 70 90 <br>
                                    Email Address:DHellas@gmail.com</p>
                                </address>

                                <address>
                                    <h5>Zonal Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>                                
                                    <p>Phone:670-898-2847 <br>
                                    Email :DHellasZonalOffice@gmail.com</p>
                                </address>
                            </li>


                            <li class="col-sm-6">
                                <address>
                                    <h5>Zone#2 Office</h5>
                                    <p>20th Street <br>
                                    Melbourne, Australia</p>
                                    <p>Phone:680-111-789 <br>
                                    Email :DHellasZOffice2@gmail.com</p>
                                </address>

                                <address>
                                    <h5>Zone#3 Office</h5>
                                    <p>1st Round Street <br>
                                    Germany, MP 11</p>
                                    <p>Phone:567-118-0909 <br>
                                    Email :DHellasZOffice3@gmail.com</p>
                                </address>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->
    <br /><br />
    <section id="contact-page">
        <div class="container">
            <div class="center">        
                <h2>Drop Your Message</h2>
                <p class="lead">Send us a message regarding your queries through this contact form.</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
              
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Name *</label>
                            <asp:TextBox ID="Name" runat="server" class="form-control" Required/><br />
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                               <asp:TextBox ID="Email" runat="server" class="form-control" Required/><br />
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="Email" ErrorMessage="Email is required"
        SetFocusOnError="True" ></asp:RequiredFieldValidator>

 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
             ErrorMessage="Invalid Email format" ControlToValidate="Email"
             SetFocusOnError="True"
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
</asp:RegularExpressionValidator>

                        <div class="form-group">
                            <label>Phone</label>
                               <asp:TextBox ID="Phone" runat="server" class="form-control"/><br />
                        </div>
                        <div class="form-group">
                            <label>Company Name</label>
                               <asp:TextBox ID="Company" runat="server" class="form-control"/><br />
                        </div>                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Subject *</label>              
                            <asp:TextBox ID="Subject" runat="server" class="form-control" Required/><br />
                        </div>
                        <div class="form-group">
                            <label>Message *</label>
                            <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" Rows="8" class="form-control" Required/>
                    
                        </div>                        
                        <div class="form-group">
                            <asp:Button ID="Contact" runat="server" Text="Submit Message" class="btn btn-primary btn-lg" OnClick="Contact_Click" />                            
                        </div>
                    </div>
               
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page--><br /><br />
</asp:Content>

