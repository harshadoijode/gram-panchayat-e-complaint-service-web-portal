 <%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #CCFFCC;
}
.style2 {
	font-size: 36px;
	font-weight: bold;
}
.style7 {color:#99FF00; font-size: 18px; font-weight: bold; }
-->
</style></head>

<body>
<%@ include file="panchayatmenu.html" %>
  <p align="center">
    <%@ include file="db.jsp" %>
    <span class="style2">
    <% 


try
{


rst=stmt.executeQuery("select name,phone,email from userreg");

  
						
  %>
  Users List</span> </p>
  <table width="619" border="1" align="center">
  <tr bgcolor="#99FFCC">
    <td width="177"><div align="center" > Name</div></td>
    <td width="175"><div align="center" >phone Number </div></td>
    <td width="245"><div align="center" >Email ID </div></td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
  <tr bgcolor="#FFFFFF">
    <td><div align="center"><%= rst.getString(1) %></div></td>
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
  </tr>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
</body>
</html>
