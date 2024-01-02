<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Order Management</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style>

	.body{
		width:90%;
		margin-left: auto;
        margin-right: auto;
	}
	
	#table {
	  font-family: Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 75%;
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
		text-align: center;
	}
	
	
    a{
      
        text-decoration: none;
        text-align:center;
        
    
    }
     #list {
	    text-align:center;
        color: blue;
        text-decoration: none; 
        font-weight: bold; 
    }
   
    #addbtn{
		  background-color: #7c66ad; 
		  border: none;
		  color: white;
		  padding: 15px 32px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		  margin: 4px 2px;
		  cursor: pointer;
		  -webkit-transition-duration: 0.4s;
		  transition-duration: 0.4s;
		  font-weight: bold; 
    }
     #addbtn:hover {
	  background-color: blue;
	  color: white;
	}
	
/* 	header css */
   .nav{
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
  
}
.navbody{
  font-family: montserrat;
}
nav{
  background: #0082e6;
  height: 80px;
  width: 100%;
}
.logo{
	background-image:url("logo.png");
}
label.logo{
  
  color: white;
  font-size: 35px;
  line-height: 80px;
  padding: 0 100px;
  font-weight: bold;
}
nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 50px;
  margin: 0 5px;
}
nav ul li a{
  color: white;
  font-size: 17px;
  padding: 7px 13px;
  border-radius: 3px;
  
}
a.active,a:hover{
  background: #1b9bff;
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  margin-top:20px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;

}
@media (max-width: 952px){
  label.logo{
    font-size: 30px;
    padding-left: 50px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
@media (max-width: 858px){
  .checkbtn{
    display: block;
  }
  ul{
    position: fixed;
    width: 100%;
    height: 100vh;
    background: #2c3e50;
    top: 80px;
    left: -100%;
    text-align: center;
    transition: all .5s;
  }
  nav ul li{
    display: block;
    margin: 50px 0;
    line-height: 30px;
  }
  nav ul li a{
    font-size: 20px;
  }
  a:hover,a.active{
    background: none;
    color: #0082e6;
  }
  #check:checked ~ ul{
    left: 0;
  }
}

</style>
</head>
<body>


    <nav class="nav">
    <div class="navbody">
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <a href="index.jsp" style="padding:20px; "><label class="logo">YumRide</label></a>
      
      <ul>
        <li><a href="Admin_index.jsp">Home</a></li>
        <li><a href="ManageUsers/user-list.jsp">User Management</a></li>
        <li><a class="active" href="order-list.jsp">Order Management</a></li>
        <li><a href="delivery-list.jsp">Delivery Management</a></li>
        <li><a href="product-list.jsp">Menu Management</a></li>
       
    
      </ul>
      </div>
      
    </nav>
   


	<div class="body">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h1 style="text-align:center;font-size:50px;">Details of All Orders</h1>
			<hr>
			<div>

				<a href="<%=request.getContextPath()%>/new3" class="btn btn-success" id="addbtn">Add
					New Order</a>
			</div>
			<br>
			
			<table id ="table">
				<thead>
					<tr>
						<th>Order ID</th>
						<th>Product ID</th>
						<th>User ID</th>
						<th>Order Quantity</th>
						<th>Date</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
			
					
			
					<c:forEach var="order" items="${listOrder}">

						<tr> 
							<td><c:out value="${order.o_id}" /></td>
							<td><c:out value="${order.p_id}" /></td>
							<td><c:out value="${order.u_id}" /></td>
							<td><c:out value="${order.o_quantity}" /></td>
							<td><c:out value="${order.o_date}" /></td>
							<td><a href="edit3?o_id=<c:out value='${order.o_id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a 
								href="delete3?o_id=<c:out value='${order.o_id}' />">Delete</a></td>
 						</tr> 
					</c:forEach>
			
				</tbody>
			</table>		
		</div>
	</div>
	<br>
	<a href="<%=request.getContextPath()%>/list3"
	id="list"><center>View of Current Order Details</center></a>
	
	</div>
</body>
<br>
</html>

