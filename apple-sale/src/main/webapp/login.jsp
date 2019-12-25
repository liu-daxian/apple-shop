<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<style type="text/css">
	
	label{
		color:red;
		font-size:20px;
	}

</style>
</head>
<body>

	<form action="login" method="post">

		name:<input type="text" name="aname" value="${userName}" /> <br />
		pass:<input type="text" name="apass" /> <br />
		<label>${errorMsg}</label><br />
		<input type="submit" value="登录">

	</form>

</body>

</html>