<!--  <a href="empform">Insert Employee Detail</a>
<br>
<a href="empupdate">Update detail</a>
<br>
<a href="empdelete">delete detail</a>
<br>
<a href="viewemp">Employees list</a>
<br>
<a href="submitCV">Submit list</a>
<br>
<a href="sumitdemo">Submit list</a>

<a href="aaa">Submit list</a> -->

<div style="border:1px solid #ccc;padding:5px;">
 
  <a href="${pageContext.request.contextPath}/uploadOneFile">Upload One File</a>
 
  &nbsp;|&nbsp;
 
  <a href="${pageContext.request.contextPath}/uploadMultiFile">Upload Multi File</a>
  
  
</div>
<a href="demosubmit">Submit list</a>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>

<div>
<tr>
<td>
   <form method="post" action="empform">   
      		<button class="button" style="vertical-align:middle onclick="empform"><span>ADD EMP </span></button>
      		 <a href="#" class="empform" style="vertical-align:middle  role="button">Link Button</a>
		  </form> 
  </td>
  <td>
    <form method="post" action="submitCV">  
      		<button class="button" style="vertical-align:middle onclick="empform"><span>Register </span></button>
		  </form>
 		 </td>
 		 <td>
   			 <form method="post" action="empform">  
      		<button class="button" style="vertical-align:middle onclick="empform"><span>ADD EMP </span></button>
		  </form>
  	</td>
 	 <td>
    		<form method="post" action="empform">  
      		<button class="button" style="vertical-align:middle onclick="empform"><span>ADD EMP </span></button>
		  </form>
 	 </td>
  <td>
  </div>
</body>
</html>





