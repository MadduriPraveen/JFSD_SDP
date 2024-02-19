<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit User</title>
</head>
<body>

	<h1>Edit User</h1>

	<form action="${pageContext.request.contextPath}/admin/updateUser"
		method="post">
		<input type="hidden" name="id" value="${user.id}"> Username: <input
			type="text" name="username" value="${user.username}"><br>
		Name: <input type="text" name="name" value="${user.name}"><br>
		<!-- Add other fields here -->
		<input type="submit" value="Save">
	</form>

</body>
</html>
