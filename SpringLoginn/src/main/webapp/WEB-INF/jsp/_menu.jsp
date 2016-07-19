<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
<div style="border:1px solid #ccc;padding:5px;">
 
  <a href="${pageContext.request.contextPath}/uploadOneFile">Upload One File</a>
 
  &nbsp;|&nbsp;
 
  <a href="${pageContext.request.contextPath}/uploadMultiFile">Upload Multi File</a>
  
  
</div>
</body>
</html>