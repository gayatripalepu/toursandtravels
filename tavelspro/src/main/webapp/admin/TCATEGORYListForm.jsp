<%@page import="business.TUSER"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
data.TCATEGORYDAOImpl T = new data.TCATEGORYDAOImpl(request);
java.util.List<business.TCATEGORY> l  = T.listTCATEGORY();
%>
<html>
	<head>
<style>
nav div img
.button {
  background-color: #008CBA; /* blue */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  float:right;
}
            body 
            {
                background-color: #cccccc;
                color: #FFFFFF;
                font-family:Verdana;
                font-size:16px;
            }

table {
  border-collapse: collapse;
  width: 100%;
}

td {
  text-align: left;
  padding: 8px;
}

tr
{
border-bottom: 1pt solid #cccccc;
color:black;
}

th {
  text-align: left;
  background-color: #008CBA;
  color: white;
padding: 8px;
}

#travelsystable
{
padding: 10px;
width:80%;
background-color: white;
border-radius: 5px;
position: relative;
left: 100px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #cccccc;
  color: black;
}

.active {
  background-color: #008CBA;
}
tr:hover {background-color: #008CFA;color: #ffffff;}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Float cancel and delete buttons and add an equal width */
.cancelbtn, .deletebtn {
  float: left;
  width: 50%;
}

/* Add a color to the cancel button */
.cancelbtn {
  background-color: #ccc;
  color: black;
}

/* Add a color to the delete button */
.deletebtn {
  background-color: #f44336;
}

/* Add padding and center-align text to the container */
.container {
  padding: 16px;
  text-align: center;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 400px;
  top: 200px;
  width: 500px; /* Full width */
  height: 240px; /* Full height */
  overflow: hidden; /* Enable scroll if needed */
  background-color: #474e5d;
  padding: 5px;
}

.modaldata {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 400px;
  top: 200px;
  width: 500px; /* Full width */
  height: 240px; /* Full height */
  overflow: hidden; /* Enable scroll if needed */
  background-color: #ffffff;
  padding: 5px;
}
/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  border: 1px solid #888;
  margin: 10px 0px 5px 10px;
  width: 95%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Modal Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and delete button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .deletebtn {
     width: 100%;
  }
}
        </style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
<body>

<div>
<nav>
<div style="display:inline;floag:left;">
<img src="images/logo.png" alt="VaagdeviToursAndTravels"><h1>Vaagdevi Tours and Travels</h1>
</div>
<ul>
  <li><a  href="home.jsp">Home</a></li>
  <li><a href="HotelListForm.jsp">Hotels</a></li>
  <li><a href="TransportDetailslListForm.jsp">Transport</a></li>
  <li><a href="TPACKAGEListForm.jsp">Packages</a></li>
  <li><a class="active">Customers</a></li>
  <li><a href="OrderPackagesListForm.jsp">Orders</a></li>
</ul>
</nav>
<div id="travelsystable">
<h3><a href="/tavelspro/TCATEGORYForm.jsp" class="button">Insert</a></h3>
<% if(l != null){ %>
  <table id='result' class='display'>
    <thead>
      <tr>
      
        <th>CategoryID</th>
      <th>CategoryName</th>
      
        <th>Action</th>	
      </tr>
    </thead>

    <tbody>
    <% for(business.TCATEGORY object : l ) {%> 
      <tr>
    
        <td><%=object.getTCATID() %></td>
        <td><%=object.getTRANSPORTNAME()%></td>
        
      
	<td><a  href="#" onclick="return show(<%=object.getTCATID()%>');"><i class="fa fa-trash-o" style="font-size:24px"></i></a>
	<a href="EditUserForm.jsp?username=<%=object.getTCATID()%>"><i class='fa fa-edit' style='font-size:24px'></i></a>
      </tr>

    <% } %>        
    </tbody>
  </table>
<%}%>
</div>

</div>
<div id="id01" class="modal">
  
  <form class="modal-content">
    <div class="container">
      <h1 style="color:black;">Delete User</h1>
      <p style="color:black;">Are you sure you want to delete User?</p>
       
      <div class="clearfix">
        <input type="hidden" name="cid"  id="cid">
        <button type="button" class="cancelbtn" onclick="document.getElementById('id01').style.display='none'">Cancel</button>
        <button type="button" class="deletebtn" onclick="return delcourse()">Delete</button>
      </div>
    </div>
  </form>
</div>
<div id="id02" class="modaldata">
  <div id="data01" class="container">
  
   
      <h1 id="h01" style="color:black;">Delete User</h1>
      <p style="color:black;">Are you sure you want to delete User?</p>
      
    </div>
  
</div>
<script>
function show(value)
{
console.log(value);
document.getElementById('id01').style.display='block';
document.getElementById('cid').value =value;
}
function showdata(value)
{
document.getElementById('id02').style.display='block';
document.getElementById('h01').innerHTML= value;
}
function delcourse()
{
var value="";
value =document.getElementById('cid').value;
document.getElementById('id01').style.display='none';
console.log(value);
window.location.href ="http://localhost:8083/tavelspro/deleteuser.jsp?username="+value;

}
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>