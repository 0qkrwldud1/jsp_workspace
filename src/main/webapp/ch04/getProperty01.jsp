<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p>	아이디 : <jsp:getProperty name="person" property="id" />
	<p>	이 름 : <jsp:getProperty name="person" property="name" />
	
	<jsp:useBean id="person2" class="ch04.com.dao.Person" scope="request" />
	<jsp:setProperty name="person2" property="id" value="20221226" />
	<jsp:setProperty name="person2" property="name" value="홍길동2" />
	<p>	아이디 : <jsp:getProperty name="person2" property="id" />
	<p>	이 름 : <jsp:getProperty name="person2" property="name" />
</body>
</html>