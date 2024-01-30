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
h2 {
	text-align: center;
	color: #333
}
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

/* Hover effect for table rows */
/* tbody tr:hover {
    background-color: #BFD8AF; 
    transition: background-color 0.3s ease; 
} */


body {
    background-color: #F5F5F5; /* Change to your desired background color */
}
.pagination{ margin: 0; }
.pagination li a{
    color: #fff;
    background-color: rgba(0,0,0,0.3);
    font-size: 15px;
    font-weight: 700;
    margin: 0 2px;
    border: none;
    border-radius: 0;
    transition: all 0.3s ease 0s;
}
.pagination li a:hover,
.pagination li a:focus,
.pagination li.active a{
    color: #fff;
    background-color: #000;
    box-shadow: 0 0 5px rgba(0,0,0,0.4);
}
</style>
<title>Student</title>
</head>
<body>
	<h2>Student Information Table</h2>
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
				<th scope="col">Edit</th>

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
						<td><form action="/student/updateForm" method="post">
							<input type="hidden" name="id" value="${student.id}">
							<button class="btn btn-primary">Edit</button>
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
			<button class="btn btn-primary">+ Add Student</button>
		</form>
	</center>
	<div class="panel-footer">
                    <div class="row">
                        <div class="col-sm-6 col-xs-6">showing <b>5</b> out of <b>25</b> entries</div>
                        <div class="col-sm-6 col-xs-6">
                            <ul class="pagination hidden-xs pull-right">
                                <li><a href="#">«</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                            <ul class="pagination visible-xs pull-right">
                                <li><a href="#">«</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
</body>
</html>