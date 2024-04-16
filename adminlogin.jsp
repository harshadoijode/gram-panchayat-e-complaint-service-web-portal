<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <link href="https://fonts.googleapis.com/css?family=Assistant:400,700" rel="stylesheet"><link rel="stylesheet" href="./style.css">


  <style type="text/css">
<!--
body {
  background: #ABCDEF;
  font-family: Assistant, sans-serif;
  display: flex;
  min-height: 90vh;
}
.login {
  color: white;
  background: background: #136a8a;
  background: 
    -webkit-linear-gradient(to right, #267871, #136a8a);
  background: 
    linear-gradient(to right, #267871, #136a8a);
  margin: auto;
  box-shadow: 
    0px 2px 10px rgba(0,0,0,0.2), 
    0px 10px 20px rgba(0,0,0,0.3), 
    0px 30px 60px 1px rgba(0,0,0,0.5);
  border-radius: 8px;
  padding: 50px;
}
.login .head {
  display: flex;
  align-items: center;
  justify-content: center;
}
.login .head .company {
  font-size: 2.2em;
}
.login .msg {
  text-align: center;
}
.login .form input[type=text].text {
  border: none;
  background: none;
  box-shadow: 0px 2px 0px 0px white;
  width: 100%;
  color: white;
  font-size: 1em;
  outline: none;
}
.login .form .text::placeholder {
  color: #D3D3D3;
}
.login .form input[type=password].password {
  border: none;
  background: none;
  box-shadow: 0px 2px 0px 0px white;
  width: 100%;
  color: white;
  font-size: 1em;
  outline: none;
  margin-bottom: 20px;
  margin-top: 20px;
}
.login .form .password::placeholder {
  color: #D3D3D3;
}
.login .form .btn-login {
  background: none;
  text-decoration: none;
  color: white;
  box-shadow: 0px 0px 0px 2px white;
  border-radius: 3px;
  padding: 5px 2em;
  transition: 0.5s;
}
.login .form .btn-login:hover {
  background: white;
  color: dimgray;
  transition: 0.5s;
}
.login .forgot {
  text-decoration: none;
  color: white;
  float: right;
}
footer {
  position: absolute;
  color: #136a8a;
  bottom: 10px;
  padding-left: 20px;
}
footer p {
  display: inline;
}
footer a {
  color: green;
  text-decoration: none;
}
footer a:hover {
  text-decoration: underline;
}
footer .heart {
  color: #B22222;
  font-size: 1.5em
}
.style1 {
	font-weight: bold;
	color: #FFFFFF;
}
input[type=submit]{
  background-color: brown;
  border: white;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
  border-radius: 25px;
  font-weight: bold;
}
input[type=submit]:hover {
  background-color:#00FF99;
  color: black;
  font-weight: bold;
  
}
.style2 {color: #FFFFFF}
.style4 {color: #FFFF00}
-->
  </style>
  
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>
   <%@ include file="db.jsp" %>
   <%@ page import="java.util.Date"%>
</p>
 <p>&nbsp;</p>
 <p align="center">
  <%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
Date date=new Date();

rst=stmt.executeQuery("select * from admin where username='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
response.sendRedirect("adminmenu.html");
	
	}else{
				
				%>	
					<script>
					
						alert("login failured");
					</script>	
						
       <%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>
<section class='login' id='login'>
<div class='head'>
  <h1 class='company'>ADMIN LOGIN PAGE</h1>
</div>
  <p class='msg'>Welcome back</p>
<div class='form'>
    <form>
      <p>Enter username
        <input type="text" name="username" required"/>
  </p>
      <p>enter password
        <input type="password" name="password" required"/>
      </p>
      <p align="center">
        <input type="submit" name="Submit" value="Login" />
      </p>
      
	  <div align="center"><a href="home.html" class="text style4"><strong>BACK TO HOME</strong></a>        </div>
    </form>
  </div>
</ section>

   
     <script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
   </script>
   </div>
   <p>&nbsp;</p>
</body>
</html>
