<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
	
		//  여러 객체를 담아 두는 그릇 -> enumeration
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin2") && user_pw.equals("1234")) {
			session.setAttribute("userID2", user_id);
			session.setAttribute("userPW2", user_pw);
			out.println("세션 설정이 성공했습니다<br>");
			out.println(user_id+"님 환영합니다");
		} else {
			out.println("세션 설정이 실패했습니다");
		}
	%>
</body>
</html>