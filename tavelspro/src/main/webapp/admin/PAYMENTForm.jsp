
<%@page import="data.PAYMENTDAOImpl"%>
<%@page import="data.TCATEGORYDAOImpl"%>
<%
	if(session.getAttribute("user")==null)
		response.sendRedirect("CustomerLogin.jsp");
	else
	{
	if(request.getMethod().equalsIgnoreCase("post"))
	{	
		PAYMENTDAOImpl tuser = new PAYMENTDAOImpl(request);
		tuser.insert();
		response.sendRedirect("PaymentListForm.jsp");
		
	}
	else
	{
		int orderid = Integer.parseInt(request.getParameter("orderid"));
%>
<!DOCTYPE html>
<html>
<head>
<title>PaymentForm</title>
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
  <li><a  href="home.jsp">Home</a></li>
  <li><a href="HotelListForm.jsp" class="active">Hotels</a></li>
  <li><a href="TransportDetailslListForm.jsp">Transport</a></li>
  <li><a href="TPACKAGEListForm.jsp">Packages</a></li>
  <li><a href="TUserListForm.jsp">Customers</a></li>
  <li><a href="OrderPackagesListForm.jsp">Orders</a></li>
</ul>
</nav>
<form id="paymentfrom" class="form" style="width:50%" method="post">
<h1>PaymentForm</h1>
<div class="form-field">
<label for="paymentmethod">Paymentmethod:</label>
<input type="text" name="txtpaymentmethod" id="txtpaymentmethod"  autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="amount">Amount:</label>
<input type="text" name="txtamount" id="txtamount"  autocomplete="off" required>
<small></small>
</div>
<div class="form-field">
<label for="orderid">Orderid:</label>
<input type="text" name="txtorderid" id="txtorderid"  value="<%=orderid%>" autocomplete="off" required>
<small></small>
</div><div class="form-group">
<input type="submit" value="Register" class="btn btn-primary">
</div>
</form>
</div><script src="js/app.js"></script>
</body>
</html>
<% } }%>