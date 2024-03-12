<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-3">

		<div class="row p-2">
			<div class="col-md-12 bg-light text-center">	
				<h1>Edit Customer</h1>
			</div>
		</div>
		
		<form action="updateCustomer" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<input type="hidden" value="${customer.id}" class="form-control" id="id" name="id">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							value="${customer.name }" class="form-control" id="name"
							name="name" placeholder="Enter Name">
					</div>
				</div>
				

			
				
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address"> ${customer.address } </textarea>
					</div>
				</div>
			</div>
<div class="col">
					<div class="form-group">
						<label for="salary">Location</label> <input type="text"
							value="${customer.location }" class="form-control" id="location"
							name="salary" placeholder="Enter Location">
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-success">Submit</button>
		</form>

	</div>

</body>
</html>