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
.style8 {color: #00FFFF}
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


rst=stmt.executeQuery("select name,email,Complainton,complaint,location from complain");

  
						
  %>
  Complaints List</span> </p>
  <table width="970" border="1" align="center">
    <tr bgcolor="#99FFCC">
      <td width="68" bgcolor="#000066"><div align="center" class="style8" > Name</div></td>
      <td width="82" bgcolor="#000066"><div align="center" class="style8" > Email ID </div></td>
      <td width="101" bgcolor="#000066"><div align="center" class="style8" > Complaint on</div></td>
      <td width="115" bgcolor="#000066"><div align="center" class="style8" > Complaint</div></td>
      <td width="119" bgcolor="#000066"><div align="center" class="style8" > Location</div></td>
      <td width="100" bgcolor="#000066"><div align="center" class="style8" > Status</div></td>
	  
      <td width="249" bgcolor="#000066">&nbsp;</td>
    </tr>
  
    <% 
  rst=stmt.executeQuery("select * from complain");
  while(rst.next()){
  
   %>
   <form action="" method="post">
    <tr bgcolor="#FFFFFF">
      <td><div align="center"><%= rst.getString(1) %></div></td>
      <td><div align="center"><%= rst.getString(2) %></div></td>
      <td><div align="center"><%= rst.getString(3) %></div></td>
      <td><div align="center"><%= rst.getString(4) %></div></td>
      <td><div align="center"><%= rst.getString(5) %></div></td>
	   <td><input name="e6" type="text" value="<%= rst.getString(6) %>" size="8"/></td>
	   <input name="email" type="hidden" value="<%= rst.getString(2) %>" />
	   <td><input name="Accept" type="submit" value="Accept" />
        <input name="Disolved" type="submit" id="update" value="disloved" />
        <input name="delete" type="submit" value="Delete" /></td>
    </tr>
	</form>
    <% } %>
</table>
  <%  						
}catch(Exception e){
out.println(e);
}

 %>




<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update complain set name='"+request.getParameter("e1")+"',email='"+request.getParameter("e2")+"',complainton='"+request.getParameter("e3")+"',complaint='"+request.getParameter("e4")+"' where name='"+request.getParameter("e2")+"' ");
if(x!=0)
{
%>
<script>
alert("Data Updated");
window.open("viewcomp.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from complain where email='"+request.getParameter("email")+"' ");
if(x!=0){
%>
<script>
alert("Date Deleted successfully");
window.open("viewcomp.jsp","_self");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
 
 
 
<% 
if(request.getParameter("Accept")!=null){
try{
int x=stmt.executeUpdate("update complain set status='Accept' where email='"+request.getParameter("email")+"' ");
if(x!=0)
{
%>
<script>
alert("Data Updated");
window.open("viewcomp.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>


 
<% 
if(request.getParameter("Disolved")!=null){
try{
int x=stmt.executeUpdate("update complain set status='Disolved' where email='"+request.getParameter("email")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewcomp.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>

</body>
</html>
