<%@page import="data.HOTELDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
HOTELDAOImpl user = new data.HOTELDAOImpl();
int hid = Integer.parseInt(request.getParameter("hid"));
if(hid != 0)
{
user.remove(hid);
response.sendRedirect("HotelListForm.jsp");
}
%>