<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Input</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("back").onclick = function(){
			location.href = "index.jsp";
		}
	}

</script>
</head>
<body>
<form action=inputproc.jsp method=get>

		<table border=1 align=center>
			<tr>
				<td align=center colspan=2>Person Input
			</tr>
			<tr>
				<td>Name :
				<td><input type=text placeholder="Enter your name" name=name>
			</tr>
			<tr>
				<td>Birth :
				<td><input type=text placeholder="ex)901234" name=birth>
			</tr>
			<tr>
				<td>Email :
				<td><input type=text placeholder="Enter your email" name=email>
			</tr>
			<tr>
				<td align=center colspan=2>
				
				<input type=submit value=Send>
				<input type=button value=Back id=back>
				
			</tr>
		</table>
	</form>
</body>
</html>