<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Data from MySQL Table</title>
</head>
<body>
    <h1>Display Data from MySQL Table</h1>
    
    <table>
        <thead>
            <tr>
                <th>Empno</th>
                <th>Name</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="row" items="${data}">
                <tr>
                    <td>${row.empno}</td>
                    <td>${row.ename}</td>
                    <td>${row.sal}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <script>
        // Make an API call to fetch data from the MySQL table
        fetch('http://127.0.0.1:5000/employees')
            .then(response => response.json())
            .then(data => {
                // Set the "data" variable in the JSP page to the fetched data
                const dataInput = document.createElement('input');
                dataInput.type = 'hidden';
                dataInput.name = 'data';
                dataInput.value = JSON.stringify(data);
                document.forms[0].appendChild(dataInput);
            })
            .catch(error => console.error(error));
    </script>
</body>
</html>
