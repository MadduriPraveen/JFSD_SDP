<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Job</title>
</head>
<body>
	<h1>Update Job</h1>
	<form action="/updateJob" method="post">
		<c:forEach var="job" items="${jobs}">
			<input type="hidden" name="jobId_${job.id}" value="${job.id}" />
            Job Title: <input type="text" name="jobTitle_${job.id}"
				value="${job.jobTitle}" />
			<br>
            Job Description: <input type="text"
				name="jobDescription_${job.id}" value="${job.jobDescription}" />
			<br>
            Salary: <input type="text" name="salary_${job.id}"
				value="${job.salary}" />
			<br>
            Location: <input type="text" name="location_${job.id}"
				value="${job.location}" />
			<br>
			<br>
		</c:forEach>
		<input type="submit" value="Update Jobs">
	</form>
</body>
</html>
