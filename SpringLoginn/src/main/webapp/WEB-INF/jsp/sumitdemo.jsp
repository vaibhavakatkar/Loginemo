<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Insert Employee</h1>
       <form:form method="post" action="saveuser">  
      	<table >  
      	
      	<tr>
        <td>FirstName:</td>
        <td><form:input path="fname" /></td>
        </tr>
         <tr>  
          <td>LastName : </td> 
          <td><form:input path="lname"  /></td>
         </tr>  
         <tr>  
          <td>Email :</td>  
          <td><form:input path="email" /></td>
         </tr> 
         <tr>  
          <td>Position :</td>  
          <td><form:input path="position" /></td>
         </tr> 
         <tr>  
          <td>Addinfo :</td>  
          <td><form:input path="addinfo" /></td>
         </tr>
         <tr>  
          <td> Upload CV:</td>  
          <td><input type="file" path="file" /></td>  
         </tr>  

         <tr>  
          <td> </td>  
          <td><input type="submit" value="Insert" /></td>  
         </tr>  
        </table>
         <a href="index.jsp">Home</a>  
           <a href="viewemp">Employee List</a> 
       </form:form>  