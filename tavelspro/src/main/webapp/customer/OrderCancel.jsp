<%@page import="data.ORDERPACKAGESDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String ordid="";
ordid = request.getParameter("orderid");
ORDERPACKAGESDAOImpl opi = new ORDERPACKAGESDAOImpl();
int n=0;
n = Integer.parseInt(ordid);
n = opi.cancelOrder(n);
	response.sendRedirect("COrderPackageListForm.jsp");


%>