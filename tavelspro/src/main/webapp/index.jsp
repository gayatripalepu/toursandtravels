<%@page import="data.FEEDBACKTBDAOImpl"%>
<%@page import="business.TPACKAGE"%>
<%@page import="data.TPACKAGEDAOImpl"%>
<%@page import="data.TRANSPORTDETAILSDAOImpl"%>
<%@page import="data.HOTELDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #cccccc;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 33.33%;
  padding: 10px 10px;
  overflow: hidden;
}
.column33 {
  float: left;
  width: 33.33%;
  padding: 10px 10px;
  overflow: hidden;
}
.column66 {
  float: left;
  width: 66.66%;
  padding: 10px 10px;
  
  
  overflow: hidden;
}


/* Remove extra left and right margins, due to padding */
.row {margin: 0 5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.navbar {
  width: 100%;
  background-color: dodgerblue;
  overflow: auto;
}

/* Navbar links */
.navbar a {
  float: left;
  text-align: center;
  padding: 20px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

/* Navbar links on mouse-over */
.navbar a:hover {
  background-color: #ddd;
  color:dodgerblue;
  font-weight:bold;
}

/* Current/active navbar link */
.active {
  background-color: #ddd;
  color:dodgerblue!important;
  font-weight:bold;
}
/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
 .column33 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
 .column66 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
.navbar a {
    float: none;
    display: block;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.9);
  padding: 10px;
  text-align: center;
  background-color: #f1f1f1;
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/vstyle.css">  
</head>
<body>

<div class="row" style="width:100%">
  <div class="column" style="width:100%">
    <div class="card">
      <div class="navbar">
  <a href="#" class="active"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp;Home</a>
  <a href="AdminLogin.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;AdminLogin</a>
  <a href="CustomerLogin.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;CustomerLogin</a>
  <a href="register.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;Register</a>
  
</div>
    </div>
  </div>
</div>

<div class="row">
  <div class="column33">
    <div class="card">
      <h3>Vaagdevi Tours and Travels</h3>
      <img src="images/goa2.jpg" width="300px" height="300px">
     <p></p>
     <p></p>
<p></p>
     <p></p>
    </div>
  </div>

<div class="column66">
    <div class="card">
      <h2 style="background-color:dodgerblue;color:white;padding: 10px 10px;">WELCOME TO VAAGDEVI TOURS AND TRAVELS PROJECT</h2>
      <pre style="font-size: 20px;text-align: left;font-weight:bold;">
This mini project is developed as part of Engineering course using 
Multi Layered Architechture and java, jee and oracle Technologies. 
The chief benefits of three-tier architecture is that because each tier 
runs on its own infrastructure, each tier can be developed simultan-
eously by a separate development team, and can be updated or scaled 
as needed without impacting the other tiers.</pre>
<img src="images/vaglogo.jpg" width="150px" height:"150px">
<p style="background-color: #555;padding:5px 5px;color:white;">The Team Members are</p>
<p>P. Manasa, RollNo:19641A05D5</p>
<p>Anuja, RollNo:19641A05G9</p>
<p>Susmitha, RollNo:19641A05F5</p>
<p>Praveen, RollNo:19641A05F62</p>
<p style="background-color: #555;padding:5px 5px;color:white;">Guide : Dr .Ayesha banu</p>
	
       </div>
  </div>
<div class="row" >
  <div class="column" style="width:100%;">
    <div class="card" style="background-color:dodgerblue;color:white;">

      <p>
        &copy; 2022 All Rights Reserved. Vaagdevi Tours and Travels.
    </p>
    </div>
  </div>
</div>
<script src="js/password_app.js"></script>
</body>
</html>
