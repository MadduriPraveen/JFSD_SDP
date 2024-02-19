<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
</head>
<body>

	<h2>User Profile</h2>

	<c:choose>
		<c:when test="${sessionScope.uid != null}">
			<table>
				<tr>
					<td>ID:</td>
					<td>${user.id}</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td>${user.name}</td>
				</tr>
				<tr>
					<td>Date of Birth:</td>
					<td>${user.dateofbirth}</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>${user.email}</td>
				</tr>
				<tr>
					<td>City:</td>
					<td>${user.city}</td>
				</tr>
				<tr>
					<td>Contact:</td>
					<td>${user.contact}</td>
				</tr>
			</table>
		</c:when>
		<c:otherwise>
			<p>
				Please <a href="signup.jsp">login</a> to view your profile.
			</p>
		</c:otherwise>
	</c:choose>

</body>
</html>
