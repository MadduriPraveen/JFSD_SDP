<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Send Email</title>
</head>
<body>
	<h1>Send an Email</h1>
	<form action="sendEmail" method="post">
		Your Name: <input type="text" name="fromName"><br> Your
		Email: <input type="text" name="fromEmail"><br> <input
			type="hidden" name="to" value="swamiayyappa1234@gmail.com">
		Subject: <input type="text" name="subject"><br> Content:
		<textarea name="content" rows="4" cols="50"></textarea>
		<br> <input type="submit" value="Send">
	</form>
</body>
</html>
