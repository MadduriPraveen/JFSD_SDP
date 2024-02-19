<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Session Timeout Check</title>
<script type="text/javascript">
        // Function to show alert after a specified time
        function showTimeoutAlert() {
            alert("Your session has timed out. Please log in again.");
            window.location.href = "signup.jsp"; // Redirect to login page
        }

        // Set timeout for alert
        setTimeout(showTimeoutAlert, 30000); // 30,000 milliseconds = 30 seconds
    </script>
</head>
<body>

	<c:choose>
		<c:when test="${empty sessionScope.uid}">
			<p>
				Your session has timed out. Please <a href="signup.jsp">log in</a>
				again.
			</p>
		</c:when>
		<c:otherwise>
			<p>Welcome, ${sessionScope.uname}!</p>
			<!-- Your content for authenticated users goes here -->
		</c:otherwise>
	</c:choose>

</body>
</html>
