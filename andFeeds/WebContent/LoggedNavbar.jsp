<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.techguy.andFeeds.entities.User"%>






<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<!--local css -->
<link rel="stylesheet" href="css/mystyle.css">
<!--Google fonts-->
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap"
	rel="stylesheet">
<!--font awesome-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Admin Panel</title>
</head>
<body>
	<!--logged navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="Index.jsp">&amp;Feeds</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="Index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About us</a></li>
				<%
					User user = (User) session.getAttribute("user");

				if (user!= null)
				{
					// User logged show the signin in navbar
				%>


				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Edit </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Category</a> <a
							class="dropdown-item" href="#">News Post</a> <a
							class="dropdown-item" href="#">Header Post</a> <a
							class="dropdown-item" href="#">Publisher</a>
					</div></li>
				<%
							}
							%>

			</ul>

		</div>


		
		<ul class="navbar-nav mr-right">



			<%
					
				if (user == null)
				{
					// User logged show the signin in navbar
				%>

			<li class="nav-item"><a class="btn btn-outline-light"
				href="Login.jsp" data-toggle="modal" data-target="#loginmodal">Sign
					in</a></li>
			<%
					}

				else
				{
				%>

			<li class="nav-item"><a class="btn btn-outline-light"
				href="LogoutServlet">Sign out</a></li>
			<%
					}
				%>

		</ul>

		</div>
	</nav>
	<!--navbar-->



	<!-- modal starts here -->
	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="loginmodal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div class="container text-center">
						<h5 class="modal-title" id="exampleModalLongTitle">Sign In</h5>
					</div>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container">
						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" name="email" class="form-control"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">
									Never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="password" class="form-control"
									placeholder="Password">
							</div>
							<div class="container text-center">
								<button type="submit" class="btn btn-primary">
									<i class="fas fa-spinner fa-spin singn-on"></i> <span
										class="sign-off">Sign In</span>
								</button>

							</div>

						</form>



					</div>
				</div>

			</div>
		</div>
	</div>







	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>