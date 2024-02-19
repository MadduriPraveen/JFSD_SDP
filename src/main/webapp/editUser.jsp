<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>
	<h1>Edit User</h1>
	<form:form modelAttribute="user" method="POST" action="/admin/editUser">
		<form:hidden path="id" />
		<label for="firstName">First Name:</label>
		<form:input path="firstName" />
		<br />

		<label for="lastName">Last Name:</label>
		<form:input path="lastName" />
		<br />

		<label for="email">Email:</label>
		<form:input path="email" />
		<br />

		<input type="submit" value="Save" />
	</form:form>
</body>
</html>
