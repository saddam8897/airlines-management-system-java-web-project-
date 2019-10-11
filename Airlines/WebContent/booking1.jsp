<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.airlines.db.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style type="text/css">
	#myDIV{
	display:none;
	}
	</style>
       
       
    

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
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" width="250px" height="50px" alt="flyhigh"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="active" href="index.jsp">Home</a></li>
                        
                        <li><a href="service.jsp">Services</a></li>
                        
                       <li><a href="aboutus.jsp">About us </a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li ><a href="adminlogin.html">  <i class="fa fa-user global-radius"></i>Admin</a></li>
                         <li>&nbsp;&nbsp;</li>
                        <%if(session.getAttribute("name1")!=null) {%>
                         <li>
     <div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><%= session.getAttribute("name1") %> <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="com.airlines.user.LogoutServlet" onMouseOver="this.style.color='#0F0'"
   onMouseOut="this.style.color='#00F'" >log out</a> </li>
      <li><a href="#">profile</a></li>
    </ul></div>
               <%}else{ %>          
                        <li ><button class="btn btn-info" data-target="#mymodel" data-toggle="modal"> <i class="fa fa-user global-radius"></i>User</button></li><%} %>
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
    
    
<div class="container" style="margin-top:95px;">
<%
String flightNo=null;
try{
Connection connection=DbUtil.getConnection();

flightNo=request.getParameter("flight");
PreparedStatement stmt = connection.prepareStatement("select * from flightinfo where flight_no=?");
stmt.setString(1,flightNo);
ResultSet rs=stmt.executeQuery();
rs.next();
%>
<div class="container">
<div class="tvlr-row">
<div class="col-lg-12">
          <div class="panel panel-default"  >
            <div class="panel-heading text-center" style="background-color:#d4d9d6;">
              <h3 style="color:black;"><b><strong>Ticket Details</strong></b></h3>
            </div>
            <div class="panel-body">
            <div class="row">
            <div class="col-md-6">
            <h4><label>Flight No : <span style="color:red;"><%=rs.getString("flight_no") %></span></label></h4>
            <h4><label>Travel : <span style="color:red;"><%=rs.getString("source") %> to <%=rs.getString("destination") %></span></label></h4>
            <h4><label>Time : <span style="color:red;"><%=rs.getString("time") %></span></label></h4>
            <h4><label>Airport Name : <span style="color:red;"><%=rs.getString("airport_name") %></span></label></h4>
            </div>
            <div class="col-md-6">
            <h4><label>Flight Name : <span style="color:red;"><%=rs.getString("flight_name") %></span></label></h4>
            <h4><label>Date : <span style="color:red;"><%=rs.getString("flight_date") %></span></label></h4>
            <h4><label>Travel Duration : <span style="color:red;"><%=rs.getString("travel_duration") %></span></label></h4>
            <h4><label>Ticket Price : <span style="color:red;"><%=rs.getString("ticket_price") %></span></label></h4>
            </div>
            </div>

</div>
</div>
</div>
</div>
</div>
<%
}catch(Exception e){
	e.printStackTrace();
	out.print(e);
}
%>

<div style="margin-top:20px;"></div>
  <div class="container">
      <section>
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
          <div class="panel panel-default" style="background-color:#d4d9d6; ">
            <div class="panel-heading " style="background-color:#bf2626; ">
              <h3 style="color:white;"><strong>Passenger Details</strong></h3>
            </div>
            <div class="panel-body">
              <form action="booking1.jsp" method='post' onchange="getNo" data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal">
                 <div class="form-group">
                 <label for="name" class="col-lg-3 control-label">Passenger:</label>
                <div class="col-lg-7">
                    <select name="no" class="form-control" id="listBox" >
                      <option value="NO">No Of Passenger</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      
                
                    </select>
                    </div>
                    <div class="col-lg-2">
                   
                  <button type="button" class="btn btn-info" onclick="myFunction()" >+</button>
                 
                  </div>
                </div><!--end form group-->
                </form>
               
                <form action="com.airlines.user.Booked" method="post" onSubmit="return confirm('Are you sure you wish to book the ticket?');"  class="form-horizontal">
            	<div id="myDIV" class="form-group">
            	
            	
            	
                <table class="table table-striped">
                <thead>
                <tr><th>S.No</th><th>Name</th><th>Age</th><th>Gender</th></tr>
                </thead>

               <%for(int i=1;i<=3;i++){ %>

               	<tr>
               	
                	<td><div class="form-group"><div class="col-lg-12"><label for="name" class="col-lg-3 control-label"><%=i %></label></div></div></td>
                	<td><div class="form-group"><div class="col-lg-12"><input type="text" name='name' class="form-control"  placeholder="passenger  name" ></div></div></td>
                	
                	<td><div class="form-group"><div class="col-lg-12"><input type="text" name='age' class="form-control" placeholder="passenger age" ></div></div></td>
                	<td>
                	<div class="form-group">
                	<div class="col-lg-12">
                 
               
                    <select name="no" class="form-control" id="listBox" >
                      <option value="SELECT GENDER" >GENDER</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
						<option value="Other">Other</option>
                
                    </select>
                    
                
          			 </div></div>
                	</td>
                	</tr>
           
       				<%} %>
                 </table>
                 
                
                 </div>
                <div class="form-group">
                  <label for="name" class="col-lg-3 control-label" >Email:</label>
                  <div class="col-lg-9">
                    <input type="email" name="email" class="form-control"  id="name" placeholder="Enter your email" required/>
                  </div>
                </div><!--end form group-->
                <div class="form-group">
                  <label for="mobile" class="col-lg-3 control-label">Mobile No:</label>
                  <div class="col-lg-9">
                    <input type="text" name="phone" class="form-control"  id="mobile" placeholder="Enter your mobile no" required/>
                  </div>
                </div><!--end form group-->
                <div class="form-group">
                  <label for="name" class="col-lg-3 control-label">Address:</label>
                  <div class="col-lg-9">
                 <textarea rows="3" cols=""  name="name" class="form-control"  id="name" placeholder="Enter your address" required/></textarea>
                  </div>
                </div><!--end form group-->
              	
                
                <div class="form-group">
                  <div class="col-lg-10 col-lg-offset-3">
                    <button type="submit" name="flight" value=<%=flightNo %> class="btn btn-info">Book</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-3"></div>
      </div>
    </section>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>


</div>

 <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <img src="images/logo.jpg" width="250px" height="50px" class="img-rounded" alt="flyhigh" style="opacity:0.7;">
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
                            <li><a href="#"> Home </a></li>
                            <li><a href="#"> About Us </a></li>
                            <li><a href="#"> Services</a></li>
							<li><a href="#"> Gallery</a></li>
							
							<li><a href="#"> Contact</a></li>
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





 