<%@page import="data.TUSERDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
TUSERDAOImpl user = new TUSERDAOImpl();
String u1 = request.getParameter("q");
business.TUSER u = user.getTUSER(u1);
String q="";
if(u != null)
{	
 q= u.getSECQ();
	session.setAttribute("quser",u1);
}
else
  q="Invalid UserName.";	
out.println(q);
%>