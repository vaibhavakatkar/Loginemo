<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Insert Employee</h1>
       <form:form method="post" action="save">  
      	<table >  
      	
      	<tr>
        <td>Id :</td>
        <td><form:input path="id" /></td>
        </tr>
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
          <td>Salary :</td>  
          <td><form:input path="salary" /></td>
         </tr> 
         <tr>  
          <td>Designation :</td>  
          <td><form:input path="designation" /></td>
         </tr> 
         <tr>  
          <td></td>  
          <td><input type="submit" value="Insert" /></td>  
          
         </tr>  
        </table>
         <a href="index.jsp">Home</a>  
           <a href="viewemp">Employee List</a> 
       </form:form>  