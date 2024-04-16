<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=reset] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}


input[type=button] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}


body {
	background-color:#CC3333;
	
	font-size: 24px;
}
.style8 {color: #00FFFF;font-size:24px;font-weight: normal; }
.style13 {color: #00FFFF}
.style14 {
	font-size: 36px;
	color: #99FF66;
}

-->
</style>
<script type="text/javascript">

</script>

</head>

<body>
 <p>
   <%@ include file="db.jsp" %>
    <%@ include file="usermenu.html" %>
</p>
 <p align="center" class="style14" >Complaint Registration Form </p>
 <center>
 <form action="" method="post">      
   <table bgcolor="#311432" width="547" height="272" border="0" align="center">

    <tr>
      <td width="254" height="60" ><div align="right" class="style13">Your Name :
          </div>
        </div></td>
      <td width="283">
        <div align="left">
          <input name="s1" type="text" " "  required />
        </div></td>
    </tr>
    <tr>
      <td height="31"> <div align="right" class="style13">Your Email:
          </div>
        </div></td>
      <td>
        <div align="left">
          <input name="s2" type="text" required  />
        </div></td>
    </tr>
	<tr>
      <td height="39"><div align="right" class="style8 style6">Complaint on : </div>      </td>
      <td>
        
        <div align="left">
		  <select name="s3" id="cars">
  <option value="Choose here">choose here</option>
  <option value="Road">Road</option>
  <option value="Water">Water</option>
  <option value="Eletricity">electricity</option>
  <option value="street light">Sreet Light</option>
</select>
        </div></td>
    </tr>
    <tr>
      <td height="44"><p align="right" class="style6 style13">Whats the Complaint  :</p></td>
      <td>        
        <div align="left">
          <input type="text" name="s4" required/>
        </div></td>
    </tr>
	<tr>
      <td height="43"><p align="right" class="style6 style13">Location  :</p></td>
      <td>        
        <div align="left">
          <input type="text" name="s5" required/>
        </div></td>
    </tr>
	<tr>
      <td height="43"><p align="right" class="style6 style13">Status :</p></td>
      <td>        
        <div align="left">
          <select name="s6" id="cars">
		   <option value="Pending">pending</option>
		  </select>
        </div></td>
    </tr>
	
	 <td height="71" >
	  
        <div align="center">
          <input name="reset" type="reset"  value="Reset" required/>
        </div>
        </div></td>
		<td height="71" >
	  
        <div align="center">
          <input name="Submit" type="submit"  value="Submit" "required/>
          </div>
        </div></td>
	</tr>
</table>

 </form>
</center>   
<% 
if(request.getParameter("Submit")!=null){
try
{


int x=stmt.executeUpdate("insert into complain  value('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"','"+request.getParameter("s5")+"','"+request.getParameter("s6")+"')");

if(x!=0){
//out.print("Applcation Submitted seccuessfilly");
}
		
		%>
		<script>
		alert("Complaint sent successfully");
		
		</script>
<%
}catch(Exception e){
out.println(e);
}
}

 %>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
</body>
</html>
