<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Index</title>
<script type="text/javascript">
	window.onload=function(){
		document.getElementById("input").onclick = function(){
			location.href = "input.jsp"
		}
		document.getElementById("output").onclick = function(){
			location.href = "output.jsp"
		}
		document.getElementById("delete").onclick = function(){
			location.href = "delete.jsp"
		}
		document.getElementById("update").onclick = function(){
			location.href = "update.jsp"
		}
	}
</script>
</head>
<body>
<form>
		<table border=1 align=center>
			<tr>
				<td align=center colspan=4 ><font size=4>Person Project</font>
			</tr>
			<tr>
				<td align=center>
					<input type=button value=Enter id=input>
					<input type=button value=Output id=output>
					<input type=button value=Delete id=delete>
					<input type=button value=Update id=update>

			</tr>

		</table>
	</form>
</body>
</html>