
<%@page import="business.TRANSPORTDETAILS"%>
<%@page import="data.TRANSPORTDETAILSDAOImpl"%>
<%@page import="business.HOTEL"%>
<%@page import="data.HOTELDAOImpl"%>
<%@page import="business.TPACKAGE"%>
<%@page import="data.TPACKAGEDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%
    int pid=0;
    pid = Integer.parseInt(request.getParameter("pid"));
    TPACKAGEDAOImpl tpi = new TPACKAGEDAOImpl();
    TPACKAGE tp = tpi.getTPACKAGE(pid);
    HOTELDAOImpl hi = new HOTELDAOImpl();
    HOTEL h =null;
    h=hi.getHOTEL(tp.getHOTELID());
    TRANSPORTDETAILSDAOImpl tdi  = new TRANSPORTDETAILSDAOImpl();
    TRANSPORTDETAILS td =tdi.getTRANSPORTDETAILS(tp.getTRANSPORT());
    
    
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

/* Current/active navbar link */
.active {
  background-color: dodgerblue;
}
/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
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

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/vstyle.css">  
</head>
<body>

<div class="row" style="width:100%;">
  <div class="column" style="width:100%">
    <div class="card">
      <div class="navbar">
  <jsp:include page="menu.jsp"/>
  <p id="usermsg" style="padding:5px;color:white;text-align:right;">Hi <%=session.getAttribute("username")%></p>
</div>
    </div>
  </div>
</div>

<div class="row"">
  <div class="column">
    <div class="card">
      <h3><%=tp.getPACKAGENAME()%></h3>
      <img src="../<%=tp.getIMGPATH()%>" style="width:300px;height:300px;">
      <p>Tour Place</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3><%=h.getHOTELNAME()%></h3>
      <img src="../<%=h.getIMGPATH()%>" style="width:300px;height:300px;">
      <p>Hotel to Stay</p>
    </div>
  </div>
<div class="column">
    <div class="card">
      <h3 style="background-color:dodgerblue;color:white;padding: 10px 10px;">Package Information</h3>
     
      <div class="formcontainer" style="width:100%;height:100%;">

        <form id="signup" class="form" method="GET" action="PaymentForm.jsp">         
            <div class="form-field">
                <label for="cname">PackageName:</label>
                <input type="hidden" name="txtpid" id="txtpid" value=<%=tp.getPID()%> autocomplete="off">
                <input type="text" name="cname" id="cname" value=<%=tp.getPACKAGENAME()%> autocomplete="off" disabled>
                <small></small>
            </div>
<div class="form-field">
                <label for="Duration">Hotel:</label>
                <input type="hidden" name="txtpname" id="txtpname" value=<%=tp.getHOTELID()%> autocomplete="off">
                <input type="text" name="cname" id="cname" value=<%=h.getHOTELNAME() %> autocomplete="off" disabled>
                <small></small>
            </div>
            <div class="form-field">
                <label for="Fee">Price:</label>
                <input type="hidden" name="txtcost" id="txtcost" value="<%=tp.getCOST()%>" autocomplete="off">
                <input type="text" name="txtcost" id="txtcost" value="<%=tp.getCOST()%>" autocomplete="off" disabled>
                <small></small>
            </div>
			<div class="form-field">
                <label for="traveldate">TravelDate:</label>
                <input type="date" name="txttdate" id="txttdate" autocomplete="off" required>
                <small></small>
            </div>
		
	
			
	            <div class="form-field">
                <input type="submit" value="Process Payment" class="btn">
            </div>
        </form>
    </div>
</div>
<script src="js/courseapp.js"></script>	

    </div>
  </div>
  </div>
 <div class="row">
  <div class="column">
    <div class="card">
     <h3>Restaurant</h3>
      <img src="../images/latest-recipe.jpg" style="width:300px;height:300px;">
      <p>Food Place</p>
      
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3><%=td.getTRANSPORTNAME()%></h3>
     <img src="../<%=td.getIMGPATH()%>" style="width:300px;height:300px;">
      <p>Transportation to Tour</p>
      
    </div>
  </div>
<div class="column">
    <div class="card" style="text-align:left;padding:25px;">
       <h3 style="background-color:dodgerblue;color:white;padding: 10px 10px;">Services</h3>
<p><i class="fa fa-wifi" aria-hidden="true"></i>&nbsp;Free Wifi</p>
<p><i class="fa fa-car" aria-hidden="true"></i>&nbsp;Free parking</p>
<p>Restaurant</p>
<p>Room service</p>
<p>BreakFast Included</p>
      
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
