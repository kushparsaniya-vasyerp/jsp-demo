<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Insert title here</title>
<style>
  /* Add more styling to the form */
  form {
    max-width: 400px;
    margin: auto;
    padding: 20px;
    border: 1px solid #3498db;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #f4f4f4;
  }

  /* Style the form labels */
  label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #2c3e50;
  }

  /* Style the form inputs */
  input {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    box-sizing: border-box;
    border: 1px solid #3498db;
    border-radius: 4px;
  }

  /* Style the checkbox */
  .form-check-input {
    margin-right: 5px;
  }

  /* Add animation to the submit button */
  button {
    width: 100%;
    background-color: #3498db;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #2980b9;
  }
</style>


</head>
<body>
	<form action="/student/add" method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Name : </label> <input
				type="text" class="form-control" id="exampleInputEmail1" name="name"
				aria-describedby="emailHelp">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Email :
			</label> <input type="text" class="form-control"
				id="exampleInputPassword1" name="email">
			<div id="emailHelp" class="form-text">We'll never share your
				email with anyone else.</div>
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Phone : </label> <input
				type="text" class="form-control" id="exampleInputEmail1"
				 name="phone">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Position :
			</label> <input type="text" class="form-control" id="exampleInputEmail1"
				name="position">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Github : </label>
			<input type="text" class="form-control" id="exampleInputEmail1"
				name="github">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Linkdein :
			</label> <input type="text" class="form-control" id="exampleInputEmail1"
				name="linkedin">
		</div>
		
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>