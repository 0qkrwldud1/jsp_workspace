<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin( ){
		var form = document.loginForm;  
    
		for (i=0; i<form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
        	// ch<'a'||ch>'z'만 만족.
			if ((ch<'a'||ch>'z') && (ch>'A'||ch<'Z') && (ch>'0'||ch<'9')){
				alert("아이디는 영문 소문자로만 입력 가능 합니다!");
				form.id.select();
				return;
			}
		}
			// not a number -> 숫자가 아닌것이 입력되면 alret.
		if (isNaN(form.passwd.value)){
			alert("비밀번호는 숫자로만 입력 가능 합니다!");
			form.passwd.select();
			return;
		}
	
		form.submit();
 } 
</script>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p>	<input type="button" value="전송"  onclick="checkLogin()">
	</form>
</body>
<html>