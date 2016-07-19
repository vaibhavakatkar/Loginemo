<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<html>
    <BODY>
        <H1>Employee List </H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "root");

            Statement statement = connection.createStatement() ;
            ResultSet rs = 
                statement.executeQuery("select * from emp") ; 
        %>
			
        <table BORDER="1">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Designation</th>
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getInt(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getFloat(3) %></td>
                <td> <%= rs.getString(4) %></td>
            </tr>
            <% } %>
        </table>
      
            <a href="index.jsp">Home</a>
            
            <button id="attention-example-2" class="button-primary extra-top-margin" style="transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);">Run example</button>
    </BODY>
</html>
    