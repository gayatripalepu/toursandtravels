<%@page import="business.TUSER"%>
<%@page import="business.TPACKAGE"%>
<%@page import="business.ORDERPACKAGES"%>
<%@page import="data.ORDERPACKAGESDAOImpl"%>
<%@page import="data.TCATEGORYDAOImpl"%>
<%
if(session.getAttribute("user") == null )
{
	response.sendRedirect("CustomerLogin.jsp");
	
}
else
{
if(request.getMethod().equalsIgnoreCase("post"))
{
	/*
	
		ORDERPACKAGESDAOImpl opack = new ORDERPACKAGESDAOImpl(request);
		opack.insert();
		String userid = null;
		userid=(String)session.getAttribute("username");
		java.util.List<ORDERPACKAGES> op = opack.listORDERPACKAGES(userid);
		session.setAttribute("pack", opack.getPack());
		int ordid=0;
		ordid = op.get(0).getORDERID();
		response.sendRedirect("PAYMENTForm.jsp?orderid="+ordid);
		*/
	
}
else
{
	try{
String pid=request.getParameter("pid");

business.TUSER pa = (TUSER)session.getAttribute("user");
String  username = pa.getUSERNAME();


%>


<!DOCTYPE html>
<html>
<head>
<title>OrderpackagesForm</title>
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
</head><body>
<div class="formcontainer" style="width:100%">
<nav>
<div style="display:inline;">
<img src="images/logo.png" alt="VaagdeviToursAndTravels"><h1>Vaagdevi Tours and Travels</h1>
</div>
<ul>
  <li><a  href="AdminHome.jsp">Home</a></li>
  <li><a href="HotelListForm.jsp" class="active">Hotels</a></li>
  <li><a href="TransportDetailslListForm.jsp">Transport</a></li>
  <li><a href="TPACKAGEListForm.jsp">Packages</a></li>
  <li><a href="TUserListForm.jsp">Customers</a></li>
  <li><a href="OrderPackagesListForm.jsp">Orders</a></li>
  <li><a href="AdminLogout.jsp">Logout</a></li>
</ul>
</nav>
<form id="orderpackagesfrom" class="form" method="post" style="width:50%">
<h1>OrderpackagesForm</h1>
</div><div class="form-field">
<label for="packageid">Packageid:</label>
<input type="text" name="txtpackageid" id="txtpackageid" value="<%=pid%>"  autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="customername">Customername:</label>
<input type="text" name="txtcustomername" id="txtcustomername" value="<%=username%>" autocomplete="off" required>
<small></small>
<div class="form-field">
<label for="traveldate">Traveldate:</label>
<input type="date" name="txttraveldate" id="txttraveldate"  autocomplete="off" required>
<small></small>
</div>
<div class="form-group">
<input type="submit" value="ProcessPayment" class="btn btn-primary">
</div>
</form>
</div><script src="js/app.js"></script>
</body>
</html>
<%}catch(Exception ex){} } }%>
