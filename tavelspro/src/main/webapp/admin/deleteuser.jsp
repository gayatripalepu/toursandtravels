

<%@page import="data.TUSERDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
data.TUSERDAOImpl user = new data.TUSERDAOImpl();
String username = request.getParameter("username");
if(username != null)
{
user.remove(username);
response.sendRedirect("TUserListForm.jsp");
}
%>