<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>My Profile |YumRide</title>
	<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
	
	<style type="text/css">
		
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
	
	input[type="button"] {
    background-color: blue; /* Green background */
    color: white; /* White text */
    padding: 10px 20px; /* Adds padding inside the button */
    margin: 5px; /* Adds margin around the button */
    border: 1px solid #ccc; /* Adds a border around the button */
    border-radius: 5px; /* Rounds the corners of the button */
    cursor: pointer; /* Changes cursor to a pointer on hover */
    box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.3); /* Adds a subtle box shadow */
   
    
	}

	input[type="button"]:hover {
	    background-color: darkblue; /* Darker green when hovering */
	}
	
	input[type="button"]:active {
	    background-color: lightblue; /* Darker green when button is pressed */
	}
	
	.useraccount-btn{
		text-align:center;
	}
	
		
		
		
	</style>
	
	
</head>
<body>
	<h1 style="text-align:center;text-transform: uppercase;">My Account</h1>
	<table id="table">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="address" value="${cus.address}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	<c:set var="role" value="${cus.role}"/>
	
	<tr>
		<td>My ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Delivery Address</td>
		<td>${cus.address}</td>
	</tr>
	<tr>
		<td>My User Name</td>
		<td>${cus.username}</td>
	</tr>
	<tr>
		<td>Role</td>
		<td>${cus.role}</td>
	</tr>

	</c:forEach>
	</table>
	<br>
	<br>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="role" value="${role}"/>
	</c:url>
	<div class="useraccount-btn">
	<a href="${cusupdate}" class="user-account-btn">
	<input type="button" name="update" value="Update My Data">
	</a>
	</div>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
		<c:param name="role" value="${role}"/>
	</c:url>
	<div class="useraccount-btn">
	<a href="${cusdelete}" class="user-account-btn">
	
	<input type="button" name="delete" value="Delete My Account" class="user-account-btn">
	</a>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>