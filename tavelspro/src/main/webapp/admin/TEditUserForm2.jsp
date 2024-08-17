<%@page import="business.TUSER"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
if(session.getAttribute("user")==null)
	 response.sendRedirect("CustomerLogin.jsp");
else
{

if(request.getMethod().equalsIgnoreCase("post"))
{
	
}
else
{
data.TUSERDAOImpl user = new data.TUSERDAOImpl();
TUSER u = (TUSER)session.getAttribute("user");
String username = u.getUSERNAME();
TUSER tuser = user.getTUSER(username);

%>
<!DOCTYPE html>
<html>
<head>
<title>TuserForm</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #cccccc;
  color: black;
}

.active {
  background-color: #008CBA;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="css/sstyle.css">
</head>
<body>

<div class="formcontainer" style="width:100%">
<nav>
<div style="display:inline;">
<img src="images/logo.png" alt="VaagdeviToursAndTravels"><h1>Vaagdevi Tours and Travels</h1>
</div>
<ul>
  <li><a  href="home.jsp">Home</a></li>
  <li><a href="ChnagePasswordForm.jsp">ChangePassword</a></li>
  <li><a href="TEditUserForm2.jsp">MyProfile</a></li>
  <li><a href="COrderPackageListForm.jsp">Orders</a></li>
  <li><a href="CLogoutForm.jsp">Logout</a></li>
</ul>
</nav>

<form id="tuserfrom" class="form" style="width:50%" method="post">
<h1>TuserForm</h1>
<div class="form-field">
<label for="username">Username:</label>
<input type="text"   value="<%=tuser.getUSERNAME()%>" autocomplete="off" disabled>
<input type="hidden" name="txtusername" id="txtusername"  value="<%=tuser.getUSERNAME()%>" autocomplete="off">
<small></small>
</div><div class="form-field">
<label for="phonenumber">Phonenumber:</label>
<input type="text" name="txtphonenumber" id="txtphonenumber"  value="<%=tuser.getPHONENUMBER()%>" autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="age">Age:</label>
<input type="text" name="txtage" id="txtage"  value="<%=tuser.getAGE()%>" autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="gender">Gender:</label>
<select name="txtgender" id="txtgender" class="form-control"><option selected><%=tuser.getGENDER()%></option><option>Male</option><option>Female</option></select> <small></small> </div><div class="form-field">
<label for="aadhaar">Aadhaar:</label>
<input type="text" name="txtaadhaar" id="txtaadhaar" value="<%=tuser.getAADHAAR()%>" autocomplete="off" required>
<small></small>
</div>
<div class="form-field">
<input type="hidden" name="txtpassword" id="txtpassword" value="<%=tuser.getPASSWORD()%>" autocomplete="off" required>
<small></small>
</div>
<div class="form-group">
<input type="submit" value="Edit" class="btn btn-primary">
</div>
</form>
</div><script src="js/app.js"></script>
</body>
</html>
<%} } %>