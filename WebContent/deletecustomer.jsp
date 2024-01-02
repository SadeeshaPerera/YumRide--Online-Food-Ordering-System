<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete My Account</title>
	<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
	<link rel="stylesheet" type="text/css" href="CSS/table.css">
	<style>
		
	
	.body{
			width:90%;
			margin-left: auto;
	        margin-right: auto;
		}
	
	#table {
	  font-family: Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 40%;
	   margin-left: auto;
       margin-right: auto;
	}
	
	#table td, #customers th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	
	#table tr:nth-child(even){background-color: #f2f2f2;}
	
	#table tr:hover {background-color: #ddd;}
	
	#table th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: left;
	  background-color:#d9e6fa;
	  color: blue;
	  text-align: center;
      border: 2px solid #ddd;	
	}
	#table td {
		text-align: left;
	}
	
	input{
		border:none;
		background-color: transparent;
	}
	
	input[type="submit"] {
    background-color: blue; /* Green background */
    color: white; /* White text */
    padding: 10px 20px; /* Adds padding inside the button */
    margin: 5px; /* Adds margin around the button */
    border: 1px solid #ccc; /* Adds a border around the button */
    border-radius: 5px; /* Rounds the corners of the button */
    cursor: pointer; /* Changes cursor to a pointer on hover */
    box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.3); /* Adds a subtle box shadow */
   
    
	}

	input[type="submit"]:hover {
	    background-color: darkblue; /* Darker green when hovering */
	}
	
	input[type="submit"]:active {
	    background-color: lightblue; /* Darker green when button is pressed */
	}
	
	#delete-btn{
		text-align:center;
	}
	
	</style>
	</head>
	<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		String role = request.getParameter("role");
	%>

	<h1 style="text-align:center;">Delete My Account</h1>

	<form action="delete" method="post">
	<table id="table">
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Email Address</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	<tr>
		<td>Delivery Address</td>
		<td><input type="text" name="address" value="<%= address %>" readonly></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
	</tr>	
	<tr>
		<td>Customer/Admin/Delivery Person</td>
		<td><input type="text" name="role" value="<%= role %>" readonly></td>
	</tr>	
	</table>
	<br>
	<div id="delete-btn">
	<input type="submit" name="submit" value="Delete My Account">
	</div>
	</form>

</body>
</html>