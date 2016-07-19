<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<h1>User list</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Fname</th><th>lName</th><th>email</th><th>position</th><th>addinfo</th><th>Insert</th><th>Delete</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${user.fname}</td>
    <td>${user.lname}</td>
    <td>${user.email}</td>
    <td>${user.position}</td>
     <td>${user.addinfo}</td>
    <td><a href="editemp/${emp.id}">Insert</a></td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="empform">Insert Employee</a>
    
    
    