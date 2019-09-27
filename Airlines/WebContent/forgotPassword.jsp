<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>flyHigh</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/logo.jpg" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="services.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

       
       
    

</head>
<body class="realestate_version" >

    <!-- LOADER -->
    <div id="preloader">
        <span class="loader"><span class="loader-inner"></span></span>
    </div><!-- end loader -->
    <!-- END LOADER -->

    <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logo.jpg" width="250px" height="50px" alt="flyhigh"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="active" href="index.html">Home</a></li>
                        
                        <li><a  href="service.html">Service</a></li>
                        <li><a  href="gallery.html">Gallery</a></li>
                       <li><a href="#">About us </a></li>
                        <li><a  href="contact.html">Contact</a></li>
                         <li ><a  href="adminlogin.html"> <i class="fa fa-user global-radius"></i>Admin</a></li>
                       	<li>&nbsp;&nbsp;</li>
                        <li ><button class="btn btn-info" data-target="#mymodel" data-toggle="modal"> <i class="fa fa-user global-radius"></i>user</button></li>
                        <!--<li ><a href="registration.html">Sign Up<i class="fa fa-user-plus global-radius"></i></a></li> -->
                        <li>&nbsp;&nbsp;</li>
                        <li class="search-option">
                            <button class="search tran3s dropdown-toggle" id="searchDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search" aria-hidden="true"></i></button>
                            <form action="#" class="p-color-bg dropdown-menu tran3s" aria-labelledby="searchDropdown">
                                <input type="text" placeholder="Search....">
                                <button class="p-color-bg"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                       </li> 
                    </ul>
                </div>
            </div>
        </nav>
            
    </header>
<!-- login pop up -->
<div class="modal fade" id="mymodel" >
    <div class="modal-dialog modal-dialog-centered" >
        <div class="modal-content" >
            <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            <div class="modal-body">
                
                
                    <div class="login-wrap">
<div class="login-html">
<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab" style="color: white;">Sign In</label>
<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab" style="color: #0961ed;">Sign Up</label>
<div class="login-form">
<div class="sign-in-htm">
<form action="com.airlines.user.Login" method="post">
<div class="group">
<label for="user" class="label" >email</label>
<input id="user" type="text" class="input" name="lname" required>
</div>
<div class="group">
<label for="pass" class="label" >Password</label>
<input id="pass" type="password" class="input" data-type="password" name="lpass" required>
</div>
<div class="group">
<input id="check" type="checkbox" class="check" checked>
<label for="check"><span class="icon"></span> Keep me Signed in</label>
</div>
<div class="group">
<input type="submit" class="button" value="Sign In">
</div>
<div class="hr"></div>
<div class="foot-lnk">
<a href="#forgot" style="color: #a6b1bf">Forgot Password?</a>
</div>
</form>
</div>
<div class="sign-up-htm">
<form action="com.airlines.user.Registration" method="post">
<div class="group">
<label for="user" class="label" >Name</label>
<input id="user" type="text" class="input" name="name" required>
</div>
<div class="group">
<label for="pass" class="label" >Email Address</label>
<input id="pass" type="text" class="input" name="email" required>
</div>
<div class="group">
<label for="user" class="label" >Phone</label>
<input id="user" type="text" class="input" name="phone" required >
</div>

<div class="group">
<label for="pass" class="label" >Password</label>
<input id="pass" type="password" class="input" data-type="password" name="pass" required>
</div>

<div class="group">
<input type="submit" class="button" value="Sign Up">
</div>
<div class="hr"></div>
</form>
</div>
</div>
</div>
</div>
               
            </div>
        </div>
    </div>
</div>
    
<div style="margin-top:95px;"></div>    
<div class="container" >
			<section>
					<div class="panel panel-default">
						<div class="panel-heading text-center" style="border-left:20px solid red;background-color:#d1d1d1;">
							<h3>Forget Password?</h3>
						</div>
						<div class="panel-body">
						<br>
						<br>
							<form action="com.airlines.user.MailDispatcher" method="post" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="email" class="col-lg-5 control-label">Enter your Registered Email-ID:</label>
									<div class="col-lg-5">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-5">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div><!--end form group-->
								</form>
								<%
								if(session.getAttribute("name")!=null){
									%>
									<form action="com.airlines.user.PasswordChange" method="post" data-toggle="validator" class="form-horizontal">
										<div class="alert alert-success form-group">
  									<h3>otp sent</h3>
  										<strong>otp sent successfully!!</strong>  Enter below to set a new password.
								</div>
								<div class="form-group">
									<label for="email" class="col-lg-5 control-label">Enter Otp:</label>
									<div class="col-lg-5">
										<input type="text" name="otp" class="form-control" id="email" placeholder="Enter recieved otp" required/>
									</div>
								</div><!--end form group-->
									<div class="form-group">
									<label for="email" class="col-lg-5 control-label">Enter your New Password:</label>
									<div class="col-lg-5">
										<input type="password" name="newpass" class="form-control" id="pass" placeholder="new password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,14}" title="Must contain at least one number and one uppercase and lowercase letter, and between 8 to 14 characters" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="pass" class="col-lg-5 control-label">Confirm New Password:</label>
									<div class="col-lg-5">
										<input type="password" name="email" class="form-control" id="pass" placeholder="confirm password" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-5">
										<button type="submit" class="btn btn-primary">Change </button>
									</div>
								</div><!--end form group-->
							</form>
									<%
								}
								session.invalidate();
								%>
							
						</div>
					</div>
			
		
		</section>
	</div>    
<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <img src="images/logo.jpg" width="250px" height="50px" class="img-rounded" alt="">
                        </div>
                        <p> lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div><!-- end clearfix -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Info Link</h3>
                        </div>

                        <ul class="twitter-widget footer-links">
                            <li><a href="index.html"> Home </a></li>
                            <li><a href="#"> About Us </a></li>
                            <li><a href="service.html"> Services</a></li>
                            <li><a href="gallery.html"> Gallery</a></li>
                            
                            <li><a href="contact.html"> Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
                
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">info@flyhigh.com</a></li>
                            <li><a href="#">www.flyhigh.com</a></li>
                            <li>Knowledge park greater noida</li>
                            <li>+91 9654853219</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
                
                <div class="col-md-2 col-sm-2 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Social</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                     
                            <li><a href="#"><i class="fa fa-instagram"></i> Instagram</a></li>
                          
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
                
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">flyHigh</a> Design By : <a href="#">flyhigh.com</a></p>
                </div>

                
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/portfolio.js"></script>
    <script src="js/hoverdir.js"></script>    
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
   <!-- MAP & CONTACT -->
    <script src="js/map.js"></script>

</body>
</html>    