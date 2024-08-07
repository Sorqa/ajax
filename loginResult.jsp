<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	boolean ok = (Boolean)request.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
<script type ="text/javascript">

	var loginOk = <%=ok%>;
	var msg = loginOk ? "로그인 성공" : "로그인 실패";
	alert(msg);

</script>
</head>
<body>
 
</body>
</html>