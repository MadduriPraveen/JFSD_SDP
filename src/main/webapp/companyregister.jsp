<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Company Registration</title>
</head>
<body>

	<h1>Company Registration</h1>

	<form action="insertcompany" method="post">
		Name: <input type="text" name="name" required><br> Email:
		<input type="email" name="email" required><br> Password:
		<input type="password" name="password" required><br>
		About:
		<textarea name="about"></textarea>
		<br> Contact: <input type="text" name="contact" required><br>
		<input type="submit" value="Register">
	</form>

</body>
</html>
