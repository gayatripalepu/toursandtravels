<%@page import="business.TUSER"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
if(request.getMethod().equalsIgnoreCase("post"))
{
	data.TUSERDAOImpl euser = new data.TUSERDAOImpl(request);
	euser.edit();
	response.sendRedirect("TUserListForm.jsp");
}
else
{
data.TUSERDAOImpl user = new data.TUSERDAOImpl();
String username = request.getParameter("username");
TUSER tuser = user.getTUSER(username);

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
.column50 {
  float: left;
  width: 50%;
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
  
<div class="column66">
    <div class="card">
      
     
      <div class="formcontainer" style="width:100%;">
<form id="tuserfrom" class="form" style="width:100%" method="post" >
  <h3 style="background-color:dodgerblue;color:white;padding: 10px 10px;">UserForm</h3>
  <div class="row">
  <div class="column50">
  
<div class="form-field" style="width:100%">
<label for="username">Username:</label>
<input type="text"  name="txtusername" id="txtusername" value="<%=tuser.getUSERNAME()%>" disabled>
<input type="hidden" name="txtusername" id="txtusername"  value="<%=tuser.getUSERNAME()%>">
<small></small>
</div>
</div>

<div class="column50">
 
<div class="form-field" >
<label for="phonenumber">Phonenumber:</label>
<input type="text" name="txtphonenumber" id="txtphonenumber"  value="<%=tuser.getPHONENUMBER()%>" autocomplete="off" required>
<small></small>
</div>

</div>

</div>
<div class="row">
  <div class="column50">
  
<div class="form-field" style="width:100%">
<label for="age">Age:</label>
<input type="text" name="txtage" id="txtage" value="<%=tuser.getAGE()%>"  autocomplete="off" required>
<small></small>
</div>
</div>

<div class="column50">
 
<div class="form-field">
<label for="gender">Gender:</label>
<select name="txtgender" id="txtgender" class="form-control"><option value="<%=tuser.getGENDER()%>" selected><%=tuser.getGENDER()%></option> <option>Male</option><option>Female</option></select> <small></small> 
</div>

</div>

</div>
<div class="row">
  <div class="column50">
  
<div class="form-field" style="width:100%">
<label for="aadhaar">Aadhaar:</label>
<input type="text" name="txtaadhaar" id="txtaadhaar" value="<%=tuser.getAADHAAR()%>" autocomplete="off" required>
<small></small>
</div>
</div>

<div class="column50">
 
<div class="form-field">
<label for="password"></label>
<input type="hidden" name="txtpassword" id="txtpassword" value="<%=tuser.getPASSWORD()%>"  autocomplete="off" required>
<small></small>
</div>

</div>

</div>

<div class="row">
  <div class="column50">
  
<div class="form-field" style="width:100%">
<label for="secq">Security Question:</label>
<select id="txtsecq"  name="txtsecq">
<option value="<%=tuser.getSECQ()%>" selected><%=tuser.getSECQ()%></option>
<option value="In what city were you born?">In what city were you born?</option>
<option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
<option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
<option value="What high school did you attend?">What high school did you attend?</option>
<option value="What was the name of your elementary school?">What was the name of your elementary school?</option>
<option value="What was the make of your first car?">What was the make of your first car?</option>
<optioni value="What was your favorite food as a child?">What was your favorite food as a child?</option>
<option value="Where did you meet your spouse?">Where did you meet your spouse?</optioni>
<option value="What year was your father (or mother) born?">What year was your father (or mother) born?</option>
</select>
<small></small>
</div>
</div>

<div class="column50">
 
<div class="form-field">
<label for="txtans">Answer:</label>
<input type="text" name="txtans" id="txtans" value="<%=tuser.getANS()%>" autocomplete="off" required>
<small></small>
</div>

</div>

</div>

<div class="row">
  <div class="column50">


<div class="form-group">
<input type="submit" value="Register" class="btn btn-primary">
</div>
</div>
</div>
</form>

<script src="js/app.js"></script>
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
<%}%>