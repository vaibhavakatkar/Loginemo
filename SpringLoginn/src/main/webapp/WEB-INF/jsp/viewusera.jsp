<%@ page import="java.sql.*" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% Class.forName("com.mysql.jdbc.Driver"); %>
<jsp:useBean id="user" class="com.spri.beans.User" scope="session"/>
<jsp:setProperty name="USERATTRIBUTE" property="*"/> 
 <jsp:include page="_menu.jsp"/>
<%-- <HTML>
<BODY>
You entered<BR>

name:<%= user.getFname() %> <BR>
lname:<%= user.getLname() %><BR>
email:<%= user.getEmail() %><BR>
position:<%=user.getPosition()%><BR>
addinfo<%=user.getAddinfo() %>



<td><c:out value="${user.getFname()}" /></td>
				<td><c:out value="${user.getLname}" /></td>
				<f:view>
Hello <h:outputText value="#{user.fname}"/>!
 <h:outputText value="#{user.getfname}"/>!
</f:view>

</BODY>
</HTML>  --%>

<html>
<head>     
 <style>
table {
    font-family: arial, sans-serif;
    /*  border-spacing: 15px; */
   border-collapse: collapse; 
    width: 100%;
}
table tr:nth-child(even) {
    background-color: #fff;
}
table tr:nth-child(odd) {
   background-color:#fff;
}
table, th, td {
    border: 1px solid black;
     text-align: left;
     color: black;
}
table, th {
    background-color: black;
    color: white;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head> 
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
                <th>Lname</th>
                <th>email</th>
                <th>position</th>
                <th>addinfo</th>
                <th>PATH</th>>
                <th> CV</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getString(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                 <td> <%= rs.getString(5) %></td>
                <td> <%= rs.getString(6)%></td>
                   <td> <a href="download">CV</a></td>
                 <!-- <td> 
      		<a href="download">CV</a>
		  </td> -->
              
            </tr>
            <% } %>
        </table>
        
        
       

            <a href="index.jsp">Home</a>
            
            
    </BODY>
</html>
