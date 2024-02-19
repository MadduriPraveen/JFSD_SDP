<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Company Registration</title>
</head>
<body>
	<h1>Company Registration</h1>
	<form action="/api/companies/register" method="post">
		Email: <input type="text" name="email" required><br>
		Name: <input type="text" name="name" required><br>
		Password: <input type="password" name="password" required><br>
		About: <input type="text" name="about"><br> Contact: <input
			type="text" name="contact" required><br>
		<!-- Add more fields as needed -->
		<input type="submit" value="Register">
	</form>
</body>
</html>
