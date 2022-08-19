<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <!-- MAIN PAGE SLIDER-->
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <!--PIC1 -->
                <div class="item active" style="background-image: url(images/slider/8.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                       


                        </div>
                    </div>
                </div>
                <!--PIC2 -->
                <div class="item" style="background-image:url(images/slider/17.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                          
                        </div>
                    </div>
                </div>
                <!--PIC3 -->
                <div class="item" style="background-image: url(images/slider/14.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section>
    <!-- CLOSE TAG MAIN PAGE SLIDER-->



    
    <section id="feature" >
        <br /><br />
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>Our Advantages</h2>
                <p class="lead">D'Hellas offers you extra-ordinary products which have various advantages that our competitors can’t touch.</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-credit-card"></i>
                            <h2>Amazing Price</h2>
                            <h3>Our products are available in a range to fit nearly every budget.</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-desktop"></i>
                            <h2>Available Finishes</h2>
                            <h3>D'Hellas offers a variety of options to match any home decor or design taste.</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-shopping-cart"></i>
                            <h2>Convenient Transport</h2>
                            <h3>We're located in 30 countries this allows quick,cheap ship of our products. </h3>
                        </div>
                    </div><!--/.col-md-4-->
                
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-file"></i>
                            <h2>Custom Engn. Elevator</h2>
                            <h3>Our experienced planning team ensures the best solutions for our customers.</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-wrench"></i>
                            <h2>Repair & Maintenance</h2>
                            <h3>Choosing D'Hellas,you will enjoy a level of personalized care and attention .</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-magnet"></i>
                            <h2>Elevator Components</h2>
                            <h3>We offer some wearing components during the guarantee to ensure health.</h3>
                        </div>
                    </div><!--/.col-md-4-->
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#feature-->
 




    <section id="content">
        <div class="container">
            <br /><br />
        <div class="center wow fadeInDown">
                <h2>Success Stories</h2>
                <p class="lead">Our customers share some of their experience regarding our company, D'Hellas.</p>
            </div>
            
            <div class="row">
                <div class="col-xs-12 col-sm-8 wow fadeInDown">
                   <div class="tab-wrap"> 
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class=""><a href="#tab1" data-toggle="tab" class="analistic-01">From China</a></li>
                                    <li class="active"><a href="#tab2" data-toggle="tab" class="analistic-02">From USA</a></li>
                                    <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">From Ireland</a></li>
                                    <li class=""><a href="#tab4" data-toggle="tab" class="tehnical">From UK</a></li>
                                    <li class=""><a href="#tab5" data-toggle="tab" class="tehnical">From Kentucky</a></li>
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade" id="tab1">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/man3.jpg">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Dax Chin, Chin's Construction</h2>
                                                 <p>Jason,Thanks for doing the job for us and doing a good job at that. I think that’s the first time we’ve ever passed an elevator inspection first time around. Thanks again for a good job and look forward to the next one.
                                                 </p>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="tab-pane fade active in" id="tab2">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/team-member.jpg">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Elisea Johns, D.A Pvt. Limited</h2>
                                                 <p>“It’s the first elevator we have ever had installed and it went very smooth. It came together excellent! Coordination and delivery went very well. The inspection passed with flying colors.”
                                                 </p>
                                            </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane fade" id="tab3">
                                     <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/service/client3.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Harry Keane, DURBAN</h2>
                                                 <p>“I have never dealt with a company such as D'Hellas before.  I have nothing but praise from the point of sale, installation and completion of the elevator.  Their staff has always been very courtesy and accommodating to my requests.  I’m very impressed with their installers how they handle themselves on site and that I never had an issue with how the job site was left.
I will be recommending the D'Hellas home Elevator to others.

                                                 </p>
                                            </div>
                                        </div>
                                     </div>
                                     
                                     <div class="tab-pane fade" id="tab4">
                                      <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/tab1.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>The Kingdom's Family, London</h2>
                                                <p>We just got back from vacation. The elevators are working great. On a scale of 1-5, we would measure your service, rates, and communications a 6! You have been great!</p>

                                                 </p>
                                            </div>
                                        </div>
                                        
                                     </div>

                                     <div class="tab-pane fade" id="tab5">
                                   <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/client1.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Trevor Carter, Kentucky State Fair Board, Kentucky Convention Center</h2>
                                                <p>You have been a great asset to our company with your quality work and vast knowledge of elevators. I would also like to thank everyone at D'Hellas for the great customer service provided to me.</p>

                                                 </p>
                                            </div>
                                        </div>
                                     </div>
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->

                <div class="col-xs-12 col-sm-4 wow fadeInDown">
                    <div class="testimonial">
                        <h2>D'Hellas Owners</h2>
                         <div class="media testimonial-inner">
                            <div class="pull-left">
                                <img class="img-responsive img-circle" src="images/man4.jpg">
                            </div>
                            <div class="media-body">
                                <p>Our aim is to provide quality projects and within the range of our customers.</p>
                                <span><strong>-Rey Michael/</strong> CEO </span>
                            </div>
                         </div>

                         <div class="media testimonial-inner">
                            <div class="pull-left">
                                <img class="img-responsive img-circle" src="images/man1.jpg">
                            </div>
                            <div class="media-body">
                                <p>You will always get support from us if you are confused about our products or services.</p>
                                <span><strong>-John Hart/</strong> Director </span>
                            </div>
                         </div>

                    </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#content-->
    <br /><br />
    <section id="partner">
        <div class="container">
            <br /><br />
            <div class="center wow fadeInDown">
                <h2>Our Partners</h2>
                <p class="lead">Here are our Partners that have helped us get to the point where we are (i.e. on top of everything).</p>
            </div>    

            <div class="partners">
                <ul>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" src="images/partners/partner1.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" src="images/partners/partner2.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms" src="images/partners/partner3.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms" src="images/partners/partner4.png"></a></li>
                    <li> <a href="#"><img class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="images/partners/partner5.png"></a></li>
                </ul><br /><br />
            </div>        <br /><br />
        </div><br /><br /><!--/.container-->
    </section><!--/#partner-->

    <section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="pull-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h2>Have a question or any query?</h2>
                            <p>We are available here for you all the time. Feel free to Contact Us through our Contact page or you can also contact us through our 24/7 helpline which is always there for you +92 332 2261706  </p>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
</asp:Content>

