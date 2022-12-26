<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<form action="request01_process.jsp" method="post"> <!-- method에는 get, post -> post가 보안적으로 안전. -->
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="text" name="passwd">
		<p>	<input type="submit" value="전송" />
	</form>
</body>
</html>