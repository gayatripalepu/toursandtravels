<%@page import="data.TUSERDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
TUSERDAOImpl user = new TUSERDAOImpl();
String u1 = request.getParameter("q");
String u2 = (String)session.getAttribute("quser");
business.TUSER u = user.getTUSER(u2);
String q="";
if(u1.equals(u.getANS()))
q=u.getPASSWORD();
else
q="Wrong Answer Try Once Again.";

out.println(q);
%>