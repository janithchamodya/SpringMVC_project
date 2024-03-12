<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

<style>
form {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 650px;
    margin: 0 auto; 
    font-family: Arial, Helvetica, sans-serif;
    font-size: 20px;
  }
  
  table {
    border-collapse: collapse;
    width: 600px;
    text-align: left;
    border: none; 
    backdrop-filter: blur(5px) opacity(0.8); 
  border-radius: 10px;
  }

  .dep{
    width: 525px;
    height: 35px;
    border-radius: 4px;
    border-color: #20cae8;
  }

  .date{
    width: 525px;
    border-radius: 4px;
    border-color: #20cae8;
  }

  
  th, td {
    padding: 8px;
    border: 1px solid #ddd;
    border: none;
  }
  
  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }
  
  td:first-child {
    width: 20%;
  }
  
  input[type="text"], input[type="date"] {
    width: 500px;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="text"]{
    border: 1px solid #20cae8; /* Thin border */
  background-color: #fff; /* White background */
  padding: 8px 12px; /* Spacing around text */
  font-size: 16px;
  color: #333;
  }
  input[type="text"]:focus{
    border: 2px solid #007bff; /* Blue border for focus */
  outline: none;
  }
  
  input[type="submit"], input[type="reset"] {
    background-color: #4CAF50; /* Green */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
  }

  button {
  padding: 10px 15px;
  font-size: 14px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}
 
button:hover {
  background-color: #45a049;
}
  
  input[type="submit"]:hover, input[type="reset"]:hover {
    background-color: #45A049; /* Darker green on hover */
  }
  
  h1 {
    text-align: center;
    color: #b00; /* Red for error messages */
    margin-top: 20px;
  }
  h2{
    text-align: center;
    font-size: 30px;
    font-family: Arial, Helvetica, sans-serif;
    color: #29422a;
    margin-top: 0;
  }
  
  .table-container {
   /*  background-color: #ffffff; Light background */
    padding: 20px;
    border-radius: 5px; /* Rounded corners */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.4); /* Subtle box shadow */
    width: 700px; /* Optional width */
    margin: 100px auto; /* Center horizontally */
    backdrop-filter: blur(5px) opacity(0.1); /* Adjust blur and opacity as needed */
  border-radius: 10px;


  backdrop-filter: blur(5px) opacity(0.8) saturate(0);
  border-radius: 10px; /* For rounded corners */
  background-color: rgba(253, 253, 253, 0.3);

   
  }
  h1 {
    font-size: 1.3rem; /* Smaller font size */
    color: black; /* Black color */
    align-items:center
  }
  



</style>
</head>
<body>
	<div class="table-container">
    <h2>ADD Customer</h2>
<form action="insertCustomer" method="post">
   
    <table>
       
        <tr>
            <td>Name</td>
            <td><input type="text"  id="name" name="name" placeholder="Enter Name"></td>
        </tr>
        
         <tr>
            <td>Address</td>
            <td><textarea  id="address" name="address"
							 placeholder="Enter Address"> </textarea></td>
        </tr>
        
        <tr>
            <td>Location</td>
            <td><input type="text"  id="location" name="location"
								placeholder="Enter Location"></td>
        </tr>
        
				<tr>	
				
	
				<td><a href="${pageContext.request.contextPath }/"
					class="btn btn-secondary"> Back </a></td>
				<td><button type="submit" class="btn btn-success">Submit</button></td>
				
				<tr>
			</form>
		</div>

	</div>

</body>
</html>








