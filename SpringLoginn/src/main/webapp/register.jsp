<%@ page import ="java.sql.*" %>
<%
    String firstname = request.getParameter("firstname");    
    String lastname = request.getParameter("lastname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into login(firstname,lastname,email,password) values ('" + firstname + "','" + lastname + "','" + email + "','" + password + "')");
    if (i > 0) {
                response.sendRedirect("Login.jsp");
    } else {
        out.print("Error");
    }
%>