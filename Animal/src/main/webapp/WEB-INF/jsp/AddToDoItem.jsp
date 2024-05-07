<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
<meta charset="ISO-8859-1">
<title>Add ToDo Item</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">

		<h1 class="p-3">Add Animal Info</h1>

		<form:form action="/saveToDoItem" method="post" modelAttribute="todo">

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-2" for="name">Name</label>
					<div class="col-md-6">
						<form:input type="text" path="name" id="name"
							class="form-control input-sm" required="required" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-2" for="name">Category</label>
					<div class="col-md-6">
						<select class="form-select" aria-label="Default select example"
							name="category" id="category">
							<option selected>Select</option>
							<option value="Mammal">Mammal</option>
							<option value="Bird">Bird</option>
							<option value="Reptile">Reptile</option>

						</select>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-2  for="image">Image</label>
					<div class="col-md-6">
						<input class="form-control" type="file" name="image" th:
							field="${todo.image}">


					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-2" for="title" id="description">Description</label>
					<div class="col-md-6">
						<label for="description"></label>
						<textarea id="description" name="description" rows="6" cols="80"
							required></textarea>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-2" for="name">Life expectancy</label>
					<div class="col-md-6">
						<select class="form-select" aria-label="Default select example"
							name="life" id="life">
							<option selected>Select</option>
							<option value="2-5">2-5 years</option>
							<option value="5-10">5-10 years</option>
							<option value="10-15">10-15 years</option>
							<option value="15-20">15-20 years</option>
							<option value="20+">20+ years</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">

					<div class="col-md-6">
						<button type="submit" value="Register" class="btn btn-success">Save</button>
					</div>
				</div>
			</div>

		</form:form>

	</div>



</body>

</html>