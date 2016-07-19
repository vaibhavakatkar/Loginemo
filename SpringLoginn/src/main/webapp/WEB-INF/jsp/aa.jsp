<%@ page import="java.sql.*" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<jsp:useBean id="user" class="com.spri.beans.User" scope="session"/>
<jsp:setProperty name="USERATTRIBUTE" property="*"/> 


<html>
    <BODY>
        <H1>Employee List </H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "root");

            Statement statement = connection.createStatement() ;
            ResultSet rs = 
                statement.executeQuery("select * from user") ; 
        %>

        <table BORDER="1">
            <tr>
                <th>Fname</th>
              
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getString(1) %></td>
         
            </tr>
            <% } %>
        </table>
            <a href="index.jsp">Home</a>
            
      
    </BODY>
</html>

        
