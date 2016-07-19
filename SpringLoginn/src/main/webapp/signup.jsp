<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Signup Page</h1>
          <form method="post" action="register.jsp">  
      	<table >  
         <tr>  
          FirstName :<br>
          <input type="text" name="firstname"><br>
         </tr>  
         <tr>  
          LastName:<br>
          <input type="text" name="lastname" ><br>
         </tr>    
          <tr>  
          Email:<br>
          <input type="text" name="email"><br>
         </tr>           
           <tr>  
          Password:<br>  
          <input type="password" name="password"><br>
         </tr>  
          <input type="submit" value="signup"><br>  
         </tr>  
          <a href="Login.jsp">Back to Login</a> 
        </table>  
       </form>  
    