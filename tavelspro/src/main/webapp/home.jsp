<%@page import="business.TPACKAGE"%>
<%@page import="data.TPACKAGEDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
TPACKAGEDAOImpl tpack = new TPACKAGEDAOImpl();
java.util.List<TPACKAGE> packs = tpack.listTPACKAGE();

%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 0px;
  text-align: center;
  background: #1abc9c;
  color: white;
}

/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}

/* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}


/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}

/* Column container */
.row {  
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  -ms-flex: 30%; /* IE10 */
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
}

/* Main column */
.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 20px;
}

/* Fake image, just for this example */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

.sfakeimg {
  background-color: #aaa;
  border:
  width: 100%;
  padding: 20px;
}

.bfakeimg{
  background-color: black;
  width: 30%;
  padding: 20px;
  border: 5px solid orange;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
}

.button {
  background-color: orange;
  border: 5px solid black;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius:25px;
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px) {
  .row {   
    flex-direction: column;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }
}
<link rel="stylesheet" href="rating.css" \>
</style>
</head>
<body>

<div class="header">
 <img src="images/BP2.jpg" style="width:100%;height:60%;">
</div>

<div class="navbar">
  <a href="#" class="active">Home</a>
  <a href="TUSERForm.jsp">Register</a>
  <a href="CustomerLogin.jsp">Login</a>
  <a href="AdminLogin.jsp">AdmnLogin</a>
  <a href="CustomerHome.jsp" class="right">MyAccount</a>
</div>

<div class="row">
  <div class="side">
    <h2>About Me</h2>
    <h5>Photo of me:</h5>
    <div class="sfakeimg" style="height:200px;"><img src="images/D4.jpg" style="width:100%"></div>
    <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
    <h3>More Text</h3>
    <p>Lorem ipsum dolor sit ame.</p>
    <div class="sfakeimg" style="height:60px;">Image</div><br>
    <div class="sfakeimg" style="height:60px;">Image</div><br>
    <div class="sfakeimg" style="height:60px;">Image</div>
  </div>
  
  <div class="main">
  <% for(TPACKAGE l : packs){ %>
    <h2><%=l.getPACKAGENAME()%></h2>
    <h5>Title description, Dec 7, 2017</h5>
    <div class="bfakeimg" style="height:300px;"><a href="DisplayPackageDetails.jsp?pid=<%=l.getPID()%>"><img src="<%=l.getIMGPATH()%>" style="height:100%;width:100%;"></a></div>
    
    <p>Price: <sapn><%=l.getCOST()%>/-</span></p>
    <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
     <a href="ORDERPACKAGESForm.jsp?pid=8001" class="button">BookNow</a>
    <br>
    <%}%>
  </div>
</div>

<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>