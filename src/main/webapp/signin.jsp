
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Sign In</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- Bootstrap CSS -->
<link href="assets/css/bootstrap.min.css" id="bootstrap-style"
	rel="stylesheet" />

<!-- Icons CSS -->
<link href="assets/css/icons.min.css" rel="stylesheet" />

<!-- App CSS -->
<link href="assets/css/app.min.css" id="app-style" rel="stylesheet" />

<script>
        document.addEventListener('DOMContentLoaded', function() {
            var num1 = Math.floor(Math.random() * 10) + 1;
            var num2 = Math.floor(Math.random() * 10) + 1;
            var operator = ['+', '-', '*'][Math.floor(Math.random() * 3)];
            var question = num1 + ' ' + operator + ' ' + num2;

            document.getElementById('captcha-question').innerText = 'What is ' + question + '?';

            var correctAnswer;
            switch (operator) {
                case '+':
                    correctAnswer = num1 + num2;
                    break;
                case '-':
                    correctAnswer = num1 - num2;
                    break;
                case '*':
                    correctAnswer = num1 * num2;
                    break;
            }
            document.getElementById('captcha-answer').value = correctAnswer;
        });

        function validateForm() {
            var userAnswer = document.getElementById('user-answer').value;
            var correctAnswer = document.getElementById('captcha-answer').value;

            if (userAnswer == correctAnswer) {
                document.getElementById('captcha-verification').value = 'true';
                return true; // Proceed with form submission
            } else {
                alert('Incorrect captcha answer. Please try again.');
                return false; // Prevent form submission
            }
        }
    </script>

</head>

<body>

	<!-- Main Content -->
	<div class="main-content">
		<div class="page-content">
			<section class="bg-auth">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-xl-10 col-lg-12">
							<div class="card auth-box">
								<div class="row g-0">
									<div class="col-lg-6 text-center">
										<div class="card-body p-4">
											<a href="Homebanner.jsp"> <img
												src="assets/images/logo-light.png" alt="" class="logo-light">
												<img src="assets/images/logo-dark.png" alt=""
												class="logo-dark">
											</a>
											<div class="mt-5">
												<img src="assets/images/auth/sign-in.png" alt=""
													class="img-fluid">
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="auth-content card-body p-5 h-100 text-white">
											<div class="w-100">
												<div class="text-center mb-4">
													<h5>Welcome Back !</h5>
													<p class="text-white-70">Sign in to KLPlacements</p>
												</div>

												<form method="post" action="checkuserlogin"
													onsubmit="return validateForm()">

													<!-- Existing email input field -->
													<div class="mb-3">
														<label for="email" class="form-label">Email</label> <input
															type="email" name="email" class="form-control" id="email"
															placeholder="Enter your Email" required>
													</div>

													<!-- Existing password input field -->
													<div class="mb-3">
														<label for="pwd" class="form-label">Password</label> <input
															type="password" name="pwd" class="form-control" id="pwd"
															placeholder="Enter your password" required>
													</div>

													<!-- Captcha question and user input field -->
													<div id="captcha-question"></div>
													<div class="mb-3">
														<label for="user-answer" class="form-label">Captcha
															Answer</label> <input type="text" id="user-answer"
															class="form-control" name="user-answer"
															placeholder="Enter the answer" required>
													</div>
													<input type="hidden" id="captcha-answer"
														name="captcha-answer"> <input type="hidden"
														id="captcha-verification" name="captcha-verification"
														value="false">


													<!-- Existing "Remember me" checkbox -->
													<div class="mb-4">
														<div class="form-check">
															<input class="form-check-input" type="checkbox"
																id="flexCheckDefault"> <label
																class="form-check-label" for="flexCheckDefault">Remember
																me</label>
														</div>
													</div>

													<!-- Existing Sign In button -->
													<div class="text-center">
														<button type="submit"
															class="btn btn-white btn-hover w-100">Sign In</button>
													</div>
												</form>

												<div class="mt-4 text-center">
													<p class="mb-0">
														Don't have an account ? <a href="signup.jsp"
															class="fw-medium text-white text-decoration-underline">
															Sign Up </a>
													</p>
												</div>
												<div class="mt-4 text-center">
													<p class="mb-0">
														Admin<a href="adminlogin.jsp"
															class="fw-medium text-white text-decoration-underline">Login</a>
													</p>
												</div>
												<div class="mt-4 text-center">
													<p class="mb-0">
														Company<a href="companylogin.jsp"
															class="fw-medium text-white text-decoration-underline">Login</a>
													</p>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<%@ include file="chatbot.jsp"%>

	<!-- Bootstrap JS -->
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Icons JS -->
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>

	<!-- App switcher JS (if applicable) -->
	<script src="assets/js/pages/switcher.init.js"></script>

	<!-- Script for displaying server error message (if applicable) -->
	<script>
        var message = "${message}";
        if (message) {
            alert(message);
        }
    </script>

</body>

</html>
