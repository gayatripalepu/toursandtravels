<%@page import="business.TUSER"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
if(request.getMethod().equalsIgnoreCase("post"))
{
	data.TUSERDAOImpl euser = new data.TUSERDAOImpl(request);
	euser.edit();
	response.sendRedirect("TUserListForm1.jsp");
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
<title>TuserForm</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="css/sstyle.css">
</head><body><div class="formcontainer">
<form id="tuserfrom" class="form" method="post">
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
<%}%>