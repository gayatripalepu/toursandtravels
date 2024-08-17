<%@page import="data.ORDERPACKAGESDAOImpl"%>
<%@page import="data.OrderPaymentDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
if(request.getMethod().equalsIgnoreCase("post"))
{
try{
OrderPaymentDAOImpl payi = new OrderPaymentDAOImpl(request);
int n=0;
n=payi.insert();
int pid = Integer.parseInt(request.getParameter("txtpid"));
String jdate = request.getParameter("txtjdate");
ORDERPACKAGESDAOImpl ord = new ORDERPACKAGESDAOImpl();
String username ="";
username =(String)session.getAttribute("username");
ord.insert(pid, username, jdate);
response.sendRedirect("COrderPackageListForm.jsp");
}catch(Exception ex)
{}
}
%>