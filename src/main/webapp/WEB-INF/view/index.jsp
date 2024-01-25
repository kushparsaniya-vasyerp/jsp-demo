<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<style>
/* Style for the entire table */
table {
	border-collapse: collapse;
	width: 100%;
	margin-top: 20px; /* Adjust as needed */
}

/* Style for table headers */
th {
	background-color: #f2f2f2; /* Light gray background color */
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

/* Style for table rows */
td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

/* Alternating row background color for better readability */
tbody tr:nth-child(even) {
	background-color: #f9f9f9; /* Lighter gray background color */
}

/* Hover effect for better interaction */
tbody tr:hover {
	background-color: #e6e6e6; /* Light gray background color on hover */
}
</style>
<title>Insert title here</title>
</head>
<body>

	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone</th>
				<th scope="col">Position</th>
				<th scope="col">Profile</th>
				<th scope="col">Delete</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${students}" var="student">
				<tr>
					<td scope="row">${student.id}</td>
					<td>${student.name}</td>
					<td>${student.email}</td>
					<td>${student.phone}</td>
					<td>${student.position}</td>
					<td><form action="/student/get" method="get">
							<input type="hidden" name="id" value="${student.id}">
							<button class="btn btn-success">Profile</button>
						</form></td>
					<td><form action="/student/delete" method="post">
							<input type="hidden" name="id" value="${student.id}">
							<button class="btn btn-danger">Delete</button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<center>
		<form action="/student/addRandom" method="post">
			<button class="btn btn-success mb-4">Add Random</button>
		</form>
	</center>

	<center>
		<form action="/student/addForm" method="post">
			<button class="btn btn-primary">Add</button>
		</form>
	</center>
</body>
</html>