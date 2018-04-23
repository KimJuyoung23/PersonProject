<%@page import="beans.PersonDAO"%>
<%@page import="beans.PersonDTO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PersonDAO manager = new PersonDAO();
		int result = manager.upDataProc2(new PersonDTO(id,name,birth,email));
		%>
		
		
		<script>
		if (<%=result%> > 0) {
			alert('Success to update')
		} else {
			alert('Fail')
		}
		location.href='update.jsp'
		</script>
	
	<form>
	
	</form>
</body>
</html>