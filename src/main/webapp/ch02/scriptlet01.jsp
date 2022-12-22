<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<% 
	//지역변수 역할
	//jdp생명주기에서 -Jspservice() 메서드 내부에서 동작하므로.
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println("2 + 3 = " + sum);
	%>
</body>
</html>