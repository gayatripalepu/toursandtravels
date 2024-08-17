<%@page import="data.HOTELDAOImpl"%>
<%@page import="data.TUSERDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String msg="";
if(request.getMethod().equalsIgnoreCase("post"))

{
HOTELDAOImpl h = new HOTELDAOImpl(request);
h.insert();
response.sendRedirect("HotelListForm.jsp");




}

%>    
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
  background-color: dodgerblue;
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
<link rel="stylesheet" href="../css/vstyle.css">  
</head>
<body>

<div class="row" style="width:100%">
  <div class="column" style="width:100%">
    <div class="card">
      <div class="navbar">
  <jsp:include page="amenu.jsp"/>
  <p id="usermsg" style="padding:5px;color:white;text-align:right;">Hi Customer</p>
</div>
    </div>
  </div>
</div>

<div class="row">
  <div class="column33">
    <div class="card">
      <h3>Vaagdevi Tours and Travels</h3>
      <img src="../images/goa2.jpg" style="width:300px;height:300px;">
     <p></p>
     <p></p>
<p></p>
     <p></p>
    </div>
  </div>
<div class="column">
    <div class="card">
      <h3 style="background-color:dodgerblue;color:white;padding: 10px 10px;">HotelForm</h3>
     
      <div class="formcontainer" style="width:100%;">
<form id="hotelfrom" class="form" style="width:100%" method="post">

<div class="form-field">
<label for="hotelname">Hotelname:</label>
<input type="text" name="txthotelname" id="txthotelname"  autocomplete="off" required>
<small></small>
</div><div class="form-field">
<input type="hidden" name="txthotelid" id="txthotelid"  value="6001" autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="hoteltype">Hoteltype:</label>
<select  name="txthoteltype" id="txthoteltype"><option value="TwoStar">TwoStar</option>
<option value="ThreeStar">ThreeStar</option>
<option value="FiveStar">FiveStar</option>
<option value="SevenStar">SevenStar</option>
<option value="Resort">Resort</option>
</select>
<small></small>
</div><div class="form-field">
<label for="address">Address:</label>
<input type="text" name="txtaddress" id="txtaddress"  autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="cost">Cost:</label>
<input type="text" name="txtcost" id="txtcost"  autocomplete="off" required>
<small></small>
<input type="hidden" name="txtimgpath" id="txtimgpath" value="images/goa2.jpg">
</div><div class="form-group">
<input type="submit" value="Register" class="btn btn-primary">
</div>
</form>
</div><script src="js/app.js"></script>
</div>
</div>


    </div>
  </div>
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

</body>
</html>