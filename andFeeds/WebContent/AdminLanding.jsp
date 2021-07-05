<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.techguy.andFeeds.entities.*"%>

<%
	User us = (User) session.getAttribute("user");
if (us == null)
{
	Message msg = new Message("Please Login to continue", "alert-success");
	session.setAttribute("msg", msg);
	response.sendRedirect("Admin.jsp");

}
%>

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
<link rel="stylesheet" href="css/app.css">

<title>Welcome to adminPanel</title>
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
		
		</ul>
		<ul class="navbar-nav mr-right">

			<li class="nav-item"><a class="btn btn-outline-light"
				href="LogoutServlet">Sign out</a></li>
			
		</ul>

		</div>
	</nav>
	

            	<div class="admin-content">
			<%if (us!= null)
				{
					// User logged show the signin in navbar
				%>
		<h1 class="lead">Hi, <%=us.getName() %></h1>
		<%} %>
		<h2>Welcome back</h2>
		<p>The world is waiting for your news</p>
		<p class="blockquote-footer">Please select a option to continue</p>

	</div>





	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>