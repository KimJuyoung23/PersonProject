<%@page import="beans.PersonDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>delete</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("back").onclick = function(){
			location.href = "index.html";
		}
		
		document.getElementById("deleteproc").onclick = function() {
			location.href = "deleteproc.jsp";
		}
	}
</script>
</head>
<body>
<form action=deleteproc.jsp method=get>
	<table border=1 align=center>
		<tr>
			<th colspan=4>Person List
		</tr>
		<tr>
			<th>ID
			<th>Name
			<th>Birth
			<th>Email
		</tr>
		<%
		PersonDAO manager = new PersonDAO();
		manager.outPut();
		
		%>
		
		<tr>
		
			<td colspan=4><input type=text placeholder="Enter Id to delete" name=delid>
			<input type=submit value=Delete id=deleteproc>
			<input type=button value=Cancel  id=back>
		</tr>
		
	</table>
	</form>
</body>
</html>