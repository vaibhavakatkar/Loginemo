
<%@ page import ="java.sql.*" %>
<%
    try{
        String firstname = request.getParameter("firstname");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");    
        PreparedStatement ps = conn.prepareStatement("Select firstname,password from login where firstname=? and password=?");
        ps.setString(1, firstname);
        ps.setString(2, password);
        ps.execute();
     ps.executeQuery();  
     response.sendRedirect("index.jsp");
    }     
     catch(Exception e){       
         out.println("Something went wrong !! Please try again");       
     }      

%>