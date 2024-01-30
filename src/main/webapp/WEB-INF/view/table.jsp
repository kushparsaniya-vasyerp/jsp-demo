<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.panel {
	font-family: 'Raleway', sans-serif;
	padding: 0;
	border: none;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.08);
}

.panel .panel-heading {
	background: #535353;
	padding: 15px;
	border-radius: 0;
}

.panel .panel-heading .btn {
	color: #fff;
	background-color: #000;
	font-size: 14px;
	font-weight: 600;
	padding: 7px 15px;
	border: none;
	border-radius: 0;
	transition: all 0.3s ease 0s;
}

.panel .panel-heading .btn:hover {
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

.panel .panel-heading .form-horizontal .form-group {
	margin: 0;
}

.panel .panel-heading .form-horizontal label {
	color: #fff;
	margin-right: 10px;
}

.panel .panel-heading .form-horizontal .form-control {
	display: inline-block;
	width: 80px;
	border: none;
	border-radius: 0;
}

.panel .panel-heading .form-horizontal .form-control:focus {
	box-shadow: none;
	border: none;
}

.panel .panel-body {
	padding: 0;
	border-radius: 0;
}

.panel .panel-body .table thead tr th {
	color: #fff;
	background: #8D8D8D;
	font-size: 17px;
	font-weight: 700;
	padding: 12px;
	border-bottom: none;
}

.panel .panel-body .table thead tr th:nth-of-type(1) {
	width: 120px;
}

.panel .panel-body .table thead tr th:nth-of-type(3) {
	width: 50%;
}

.panel .panel-body .table tbody tr td {
	color: #555;
	background: #fff;
	font-size: 15px;
	font-weight: 500;
	padding: 13px;
	vertical-align: middle;
	border-color: #e7e7e7;
}

.panel .panel-body .table tbody tr:nth-child(odd) td {
	background: #f5f5f5;
}

.panel .panel-body .table tbody .action-list {
	padding: 0;
	margin: 0;
	list-style: none;
}

.panel .panel-body .table tbody .action-list li {
	display: inline-block;
}

.panel .panel-body .table tbody .action-list li a {
	color: #fff;
	font-size: 13px;
	line-height: 28px;
	height: 28px;
	width: 33px;
	padding: 0;
	border-radius: 0;
	transition: all 0.3s ease 0s;
}

.panel .panel-body .table tbody .action-list li a:hover {
	box-shadow: 0 0 5px #ddd;
}

.panel .panel-footer {
	color: #fff;
	background: #535353;
	font-size: 16px;
	line-height: 33px;
	padding: 25px 15px;
	border-radius: 0;
}

.pagination {
	margin: 0;
}

.pagination li a {
	color: #fff;
	background-color: rgba(0, 0, 0, 0.3);
	font-size: 15px;
	font-weight: 700;
	margin: 0 2px;
	border: none;
	border-radius: 0;
	transition: all 0.3s ease 0s;
}

.pagination li a:hover, .pagination li a:focus, .pagination li.active a
	{
	color: #fff;
	background-color: #000;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.4);
}

.pull-right  a {
	padding: 10px;
}

#add {
	background-color: green;
}
</style>
<script>
	function submitForm() {
		// Create a form element
		var form = document.createElement('form');
		form.method = 'POST';
		form.action = '/student/addForm'; // Specify your form action URL here

		// Optionally, append any data you want to send
		// For example:
		var input = document.createElement('input');
		input.type = 'hidden';
		input.name = 'key';
		input.value = 'value';
		form.appendChild(input);

		// Append the form to the body and submit it
		document.body.appendChild(form);
		form.submit();
	}
	var selectedValue = 5;
	function select(element){
		selectedValue = selectElement.value;
	}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<div class="panel">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-12 col-xs-12">
								<a href="#" class="btn btn-sm btn-primary pull-left"
									onclick="submitForm()" id="add"><i
									class="fa fa-plus-circle"></i> Add New</a>
								<form class="form-horizontal pull-right" action="/student/all">
									<div class="form-group">
										<label>Show : </label> <select class="form-control" name="pageSize" onchange="this.form.submit()">
											<option value="5">5</option>
											<option value="10">10</option>
											<option value="15">15</option>
											<option value="20">20</option>
										</select>
									
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="panel-body table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Position</th>
									<th>Info</th>
									<th>Delete</th>
									<th>Edit</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${students}" var="student">

									<tr>

										<td>${student.id}</td>
										<td>${student.name}</td>
										<td>${student.email}</td>
										<td>${student.phone}</td>
										<td>${student.position}</td>
										<td><form action="/student/get" method="get">
												<input type="hidden" name="id" value="${student.id}">
												<button class="btn btn-success">Info</button>
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
					</div>
					<div class="panel-footer">
						<div class="row">
							<div class="col-sm-6 col-xs-6">
								showing <b>5</b> out of <b>${entries}</b> entries
							</div>
							<div class="col-sm-6 col-xs-6">
								<ul class="pagination hidden-xs pull-right">
									<li><a href="#">«</a></li>
									<c:forEach var="i" begin="1" end="${count}">
									<li><a href="/student/page/${i}">${i}</a></li>
										
									</c:forEach>
									<li><a href="#">»</a></li>
								</ul>
								<ul class="pagination visible-xs pull-right">
									<li><a href="#">«</a></li>
									<li><a href="#">»</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>