<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<jsp:useBean id="dao" class="beans.PersonDAO"/>
<jsp:useBean id="dto" class="beans.PersonDTO">
	<jsp:setProperty name="dto" property="*"/>
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Person InputProc</title>
</head>
<body>
	<%
		int result = dao.insertNewData(dto);	
	%>
	<script type="text/javascript">
	if(<%=result%> > 0){
		alert('Success to enter')
	}else{
		alert('Fail to enter')
	}
	location.href = 'index.jsp';
	</script>
	
	
</body>
</html>