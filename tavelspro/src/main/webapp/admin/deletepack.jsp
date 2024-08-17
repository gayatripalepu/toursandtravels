<%@page import="data.TPACKAGEDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%

TPACKAGEDAOImpl user = new data.TPACKAGEDAOImpl();
int pid = Integer.parseInt(request.getParameter("pid"));
if(pid != 0)
{
user.remove(pid);
response.sendRedirect("TPACKAGEListForm.jsp");
}
%>