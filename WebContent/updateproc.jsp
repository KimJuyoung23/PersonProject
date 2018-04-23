<%@page import="beans.PersonDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>update</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("back").onclick = function() {
			location.href = "index.html";
		}
	}
</script>
</head>
<body>

	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jsp10", "jsp10");

		int id = Integer.parseInt(request.getParameter("upid"));
		
		
		PersonDAO manager = new PersonDAO();
		manager.upDataProc(id);
		
		
		String sql = "delete from person where id=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setInt(1, id);
		ResultSet rs = pstat.executeQuery();
		
		String name = null;
		String birth = null;
		String email = null;
		if(rs.next()){
		
		name = rs.getString("name");
		birth = rs.getString("birth");
		email = rs.getString("email");
		
		}
		con.close();
	%>
	<form action=updateproc2.jsp method=get>

		<table border=1 align=center>
			<tr>
				<td align=center colspan=2>Person Update2
			</tr>
			<tr>
				<td>Name :
				<td><input type=text placeholder='Enter' name=name
					value='<%=name%>'>
			</tr>
			<tr>
				<td>Birth :
				<td><input type=text placeholder='Enter' name=birth
					value='<%=birth%>'>
			</tr>
			<tr>
				<td>Email :
				<td><input type=text placeholder='Enter' name=email
					value='<%=email%>'> <input type=hidden name=id
					value=<%=id%>>
			</tr>
			<tr>
				<td align=center colspan=2><input type=submit value=Send>
					<input type=button value=Back id=back>
			</tr>
		</table>

	</form>

</body>
</html>