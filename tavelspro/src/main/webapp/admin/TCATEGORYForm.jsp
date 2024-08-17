
<%@page import="data.TCATEGORYDAOImpl"%>
<%
	if(request.getMethod().equalsIgnoreCase("post"))
	{	
		data.TCATEGORYDAOImpl tuser = new TCATEGORYDAOImpl(request);
		tuser.insert();
		response.sendRedirect("TCATEGORYListForm.jsp");
		
	}
	else
	{
%>

<!DOCTYPE html>
<html>
<head>
<title>TcategoryForm</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="css/sstyle.css">
</head><body><div class="formcontainer">
<form id="tcategoryfrom" class="form" method="post">
<h1>TcategoryForm</h1>
<div class="form-field">
<label for="tcatid">Tcatid:</label>
<input type="text" name="txttcatid" id="txttcatid"  autocomplete="off" required>
<small></small>
</div><div class="form-field">
<label for="transportname">Transportname:</label>
<input type="text" name="txttransportname" id="txttransportname"  autocomplete="off" required>
<small></small>
</div><div class="form-group">
<input type="submit" value="Register" class="btn btn-primary">
</div>
</form>
</div><script src="js/app.js"></script>
</body>
</html>
<%} %>
