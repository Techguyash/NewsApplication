<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.techguy.andFeeds.entities.*"%>

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
<link rel="stylesheet" href="css/app.css">
<!--Google fonts-->
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap"
	rel="stylesheet">
<!--font awesome-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Login</title>
</head>
<body>
	<%@ include file="LoggedNavbar.jsp"%>
	<%
			Message m = (Message) session.getAttribute("msg");
							if (m != null) {
							%>
							<div class="alert <%=m.getType()%> text-center" role="alert">
								<%=m.getMessage()%>
							</div>


							<%
								session.removeAttribute("msg");
							}
							%>
	


	<div class="admin-content">

		<h1 class="lead">Hi, Admin</h1>
		<h2>Welcome back to make a world</h2>
		<p>Informative and make revolution</p>
		<p class="blockquote-footer">Please signIn to continue</p>

	</div>

	<!-- modal starts here -->












	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>