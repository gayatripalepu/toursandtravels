<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("admin");
session.removeAttribute("adminname");
session.invalidate();
response.sendRedirect("/tavelspro/index.jsp");
%>