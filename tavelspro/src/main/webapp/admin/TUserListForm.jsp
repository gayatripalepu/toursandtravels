
<%@page import="business.TUSER"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%
data.TUSERDAOImpl T = new data.TUSERDAOImpl(request);
java.util.List<business.TUSER> l  = T.listTUSER();
%>  

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #cccccc;
}


/* Float four columns side by side */
.column {
  float: left;
  width: 33.33%;
  padding: 10px 10px;
  overflow: hidden;
}
.column33 {
  float: left;
  width: 33.33%;
  padding: 10px 10px;
  overflow: hidden;
}
.column66 {
  float: left;
  width: 66.66%;
  padding: 10px 10px;
  overflow: hidden;
}

.navbar .active
{
  background-color: #ddd;
  color:dodgerblue;
  font-weight:bold;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.navbar {
  width: 100%;
  background-color: dodgerblue;
  overflow: auto;
}

/* Navbar links */
.navbar a {
  float: left;
  text-align: center;
  padding: 20px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

/* Navbar links on mouse-over */
.navbar a:hover {
  background-color: #ddd;
  color:dodgerblue;
  font-weight:bold;
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
  background-color:#c1c1c1;
  color: dodgerblue;
padding: 8px;
}

#travelsystable
{
padding: 10px;
width:100%;
background-color: white;
border-radius: 5px;

}
tr:hover {background-color: #c1c1c1;color: #ffffff;}
.button {
  background-color: dodgerblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  text-decoration:none;
}

button {
  background-color: dodgerblue;
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
  padding: 10px;
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
  height: 2400px; /* Full height */
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

/* Current/active navbar link */

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
 .column33 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
 .column66 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
.navbar a {
    float: none;
    display: block;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.9);
  padding: 10px;
  text-align: center;
  background-color: #f1f1f1;
}

 table.dataTable tbody tr.myeven{
    background-color:#f2eeee;
}
table.dataTable tbody tr.myodd{
    background-color:#d1d1d1;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="vstyle.css">  
 <link rel="stylesheet" type="text/css" href="style.css">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.js"></script>

  <script src="../js/script.js"></script>
</head>
<body>

<div class="row" style="width:100%">
  <div class="column" style="width:100%">
    <div class="card">
      <div class="navbar">
  
  
  
  <a href="AdminHome.jsp"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a>
  <a href="HotelListForm.jsp">Hotels</a>
  <a href="TransportDetailsListForm.jsp"><i class="fa fa-plane" aria-hidden="true"></i>&nbsp;Transport</a>
  <a href="TPACKAGEListForm.jsp">Packages</a>
  <a href="TUserListForm.jsp" class="active"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Customers</a>
  <a href="OrderPackagesListForm.jsp"><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;Orders</a>
  <a href="AdminLogout.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Logout</a>
  <p id="usermsg" style="padding:5px;color:white;text-align:right;">Hi Admin</p>
   
  
</div>
    </div>
  </div>
</div>

<div class="row">
  

<div class="column66" style="width:80%;">
    <div class="card">
      <div id="travelsystable">
<h3 style="float:left;"><a href="TUSERForm.jsp" class="button">Insert</a></h3>
<% if(l != null){ %>
  <table id='dataTable'>
    <thead>
      <tr>
      
        <th>UserNmae</th>
      <th>PhoneNo</th>
      <th>Age</th>
      <th>Gender</th>
      <th>AdhaarNo</th>
        <th>Action</th>	
      </tr>
    </thead>

    <tbody>
    <% for(TUSER object : l ) {%> 
      <tr>
    
        <td><%=object.getUSERNAME()%></td>
        <td><%=object.getPHONENUMBER()%></td>
        <td><%=object.getAGE()%></td>
        <td><%=object.getGENDER()%></td>
        <td><%=object.getAADHAAR()%></td>
      
	<td><a  href="#" onclick="return show('<%=object.getUSERNAME()%>');"><i class="fa fa-trash-o" style="font-size:24px"></i></a>
	<a href="EditUserForm.jsp?username=<%=object.getUSERNAME()%>"><i class='fa fa-edit' style='font-size:24px'></i></a>
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
window.location.href ="http://localhost:8083/tavelspro/admin/deleteuser.jsp?username="+value;

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

       </div>
       <div class="column33" style="width:20%;">
    <div class="card">
      <h3>Vaagdevi Tours and Travels</h3>
      <img src="../images/goa2.jpg" style="width:200px;height:300px;">
     <p></p>
     <p></p>
<p></p>
     <p></p>
    </div>
  </div>
  </div>
<div class="row" >
  <div class="column" style="width:100%;">
    <div class="card" style="background-color:dodgerblue;color:white;">

      <p>
        &copy; 2022 All Rights Reserved. Vaagdevi Tours and Travels.
    </p>
    </div>
  </div>
</div>

</body>
</html>