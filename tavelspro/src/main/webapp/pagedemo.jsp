<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>  
<head>  
<title>    
</title>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<head>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
<style>  
#data tr {  
  display: none;  
}  
.page {  
margin-top: 50px;  
}  
table, th, td {  
  border: 1px solid black;  
}  
#data {  
  font-family: Arial, Helvetica, sans-serif;  
  border-collapse: collapse;  
  width: 100%;  
}  
#data td, #data th {  
  border: 1px solid #ddd;  
  padding: 8px;  
}  
#data tr:nth-child(even){ background-color: #f2f2f2; }  
  
#data tr:hover {  
background-color: #ddd;  
}  
#data th {  
  padding-top: 12px;  
  padding-bottom: 12px;  
  text-align: left;  
  background-color: dodgerblue;  
  color: white;  
}  
h2 {  
color: #4CAF50;  
}  
#nav a {  
color: #4CAF50;  
font-size: 20px;  
margin-top: 22px;  
font-weight: 600;  
}  
a:hover, a:visited, a:link, a:active {  
    text-decoration: none;  
}  
</style>  
<script src="https://code.jquery.com/jquery-3.5.1.min.js"> </script>  
<script>  
$(document).ready (function () {  
    $('#data').after ('<div id="nav"></div>');  
    var rowsShown = 5;  
    var rowsTotal = $('#data tbody tr').length;  
    var numPages = rowsTotal/rowsShown;  
    for (i = 0;i < numPages;i++) {  
        var pageNum = i + 1;  
        $('#nav').append ('<a href="#" rel="'+i+'">'+pageNum+'</a> ');  
    }  
    $('#data tbody tr').hide();  
    $('#data tbody tr').slice (0, rowsShown).show();  
    $('#nav a:first').addClass('active');  
    $('#nav a').bind('click', function() {  
    $('#nav a').removeClass('active');  
   $(this).addClass('active');  
        var currPage = $(this).attr('rel');  
        var startItem = currPage * rowsShown;  
        var endItem = startItem + rowsShown;  
        $('#data tbody tr').css('opacity','0.0').hide().slice(startItem, endItem).  
        css('display','table-row').animate({opacity:1}, 300);  
    });  
});  
</script>  
</head>  
<body>  
<div class ="page" align="center">  
<h2> <b> Example:  JQuery Pagination </b> </h2>  
<table id="data" align="center">  
<tr>  
    <th>Company</th>  
    <th>Contact</th>  
    <th>Country</th>  
  </tr>  
  <tr>  
    <td>Alfreds Futterkiste</td>  
    <td>Maria Anders</td>  
    <td>Germany</td>  
  </tr>  
  <tr>  
    <td>Berglunds snabbk?p</td>  
    <td>Christina Berglund</td>  
    <td>Sweden</td>  
  </tr>  
  <tr>  
    <td> Centro Moctezuma</td>  
    <td>Francisco Chang</td>  
    <td>Mexico</td>  
  </tr>  
  <tr>  
    <td>Ernst Handel</td>  
    <td>Roland Mendel</td>  
    <td>Austria</td>  
  </tr>  
  <tr>  
    <td>Island Trading</td>  
    <td>Helen Bennett</td>  
    <td>UK</td>  
  </tr>  
  <tr>  
    <td>K?niglich Essen</td>  
    <td>Philip Cramer</td>  
    <td>Germany</td>  
  </tr>  
  <tr>  
    <td>Laughing Bacchus Winecellars</td>  
    <td>Yoshi Tannamuri</td>  
    <td>Canada</td>  
  </tr>  
  <tr>  
    <td>Magazzini Alimentari Riuniti</td>  
    <td>Giovanni Rovelli</td>  
    <td>Italy</td>  
  </tr>  
  <tr>  
    <td>North/South</td>  
    <td>Simon Crowther</td>                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    <td>UK</td>  
  </tr>  
  <tr>  
    <td> Paris specialties</td>  
    <td> Marie Bertrand</td>  
    <td> France</td>  
  </tr>  
</table>  
 </div>  
</body>  
</html>