<%@page import="beans.PersonDAO"%>
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
	int id = Integer.parseInt(request.getParameter("delid"));
	
	PersonDAO manager = new PersonDAO();
	int result = manager.deleteData(id);
	
	%>
	<script type="text/javascript">
	if(<%=result%> > 0){
		out.println("alert('Success to delete')");
	}else{
		out.println("alert('Fail')");
	}
	location.href='delete.jsp';
	</script>



</body>
</html>