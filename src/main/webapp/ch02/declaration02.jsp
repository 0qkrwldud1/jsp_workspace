<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<!-- 스크립트 표현 방법 학습중 -->
	<!-- 기존 주석처리부분 : ctrl, shift, / -->
	<%!int sum(int a, int b) {
		return a + b;
	}%>
	<%
	/* 
	스크립트 내부에서는 원래 자바 주석을 하듯이 사용
	*/
		out.println("2 + 3 = " + sum(2, 3)+"<br>");
	%>
	2 + 3

</body>
</html>