<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User Information</title>
</head>
<body>

	<c:url var="updateUrl" value="/updateUserData" />

	<form action="${updateUrl}" method="post" enctype="multipart/form-data">

		<div class="mb-3">
			<label for="username" class="form-label">Username</label> <input
				type="text" class="form-control" id="username" name="username"
				value="${user.username}" />
		</div>

		<div class="mb-3">
			<label for="name" class="form-label">Name</label> <input type="text"
				class="form-control" id="name" name="name" value="${user.name}" />
		</div>

		<div class="mb-3">
			<label for="dob" class="form-label">Date of Birth</label> <input
				type="date" class="form-control" id="dob" name="dob"
				value="${user.dateofbirth}" />
		</div>

		<div class="mb-3">
			<label for="city" class="form-label">City</label> <input type="text"
				class="form-control" id="city" name="city" value="${user.city}" />
		</div>

		<div class="mb-3">
			<label for="email" class="form-label">Email</label> <input
				type="email" class="form-control" id="email" name="email"
				value="${user.email}" />
		</div>

		<div class="mb-3">
			<label for="pwd" class="form-label">Password</label> <input
				type="password" class="form-control" id="pwd" name="pwd"
				value="${user.password}" />
		</div>

		<div class="mb-3">
			<label for="contact" class="form-label">Contact</label> <input
				type="text" class="form-control" id="contact" name="contact"
				value="${user.contact}" />
		</div>

		<div class="mb-3">
			<label for="about" class="form-label">About</label>
			<textarea class="form-control" id="about" name="about">${user.about}</textarea>
		</div>

		<div class="mb-3">
			<label for="education" class="form-label">Education</label>
			<textarea class="form-control" id="education" name="education">${user.education}</textarea>
		</div>

		<div class="mb-3">
			<label for="skills" class="form-label">Skills</label>
			<textarea class="form-control" id="skills" name="skills">${user.skills}</textarea>
		</div>

		<div class="mb-3">
			<label for="languages" class="form-label">Languages</label> <input
				type="text" class="form-control" id="languages" name="languages"
				value="${user.languages}" />
		</div>

		<div class="mb-3">
			<label for="profilepicFile" class="form-label">Profile
				Picture</label> <input type="file" class="form-control" id="profilepicFile"
				name="profilepicFile" />
		</div>

		<div class="mb-3">
			<label for="resumeFile" class="form-label">Resume</label> <input
				type="file" class="form-control" id="resumeFile" name="resumeFile" />
		</div>

		<button type="submit" class="btn btn-primary">Update</button>

	</form>

</body>
</html>
