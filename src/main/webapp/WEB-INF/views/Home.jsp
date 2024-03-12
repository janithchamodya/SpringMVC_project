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
				<h1> Customer</h1>
			</div>
		</div>
		
		<div class="row p-2">
        	<div class="col-md-12 bg-light text-right">
        		<a href="addCustomer" class="btn btn-primary"> Add Customer </a>
        	</div>
       	</div>
        
		
		<div class="row">

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Address</th>
						<th scope="col">Location</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cust" items="${customer}">
						<tr>
							<td class="table-plus">${cust.id}</td>
							<td>${cust.name}</td>
							<td>${cust.address}</td>
							<td>${cust.location}</td>
						
							
							<td><a href="editCustomer/${cust.id}" class="btn btn-info">
									Edit </a></td>
							<td><a href="deleteCustomer/${cust.id}"
								class="btn btn-danger"> Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>