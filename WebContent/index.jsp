<%@page import="com.cart.connection.DbCon"%>
<%@page import="com.cart.dao.ProductDao"%>
<%@page import="com.cart.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
List<Product> burger_products = pd.getAllBurgers();
List<Product> desert_products = pd.getAllDeserts();
List<Product> beverage_products = pd.getAllBeverages();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>YumRide</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<style>
	html {
    scroll-behavior: smooth;
}
</style>

</head>

<body>
	<%@include file="/includes/navbar.jsp"%>
	
	<ul class="nav justify-content-center">
	  <li class="nav-item">
	    <a class="nav-link active" href="#section0"><h4>All</h4></a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#section1"><h4>Burgers</h4></a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#section2"><h4>Desserts</h4></a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#section3"><h4>Beverages</h4></a>
	  </li>
	</ul>
	
	<div class="container" id ="section0">
		<div class="card-header my-3 text-center">All Categories</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: Rs <%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Order</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>
		
		<div id ="section1">
	<div class="container">
		<div class="card-header my-3 text-center bg-warning"><h4>Burgers</h4></div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : burger_products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: Rs <%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>
	</div>
	
		
		
		
	<div id ="section2">
	<div class="container">
		<div class="card-header my-3 text-center bg-warning"><h4>Desserts </h4></div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : desert_products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: Rs <%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>
	</div>
	
	
	
		<div id ="section3">
	<div class="container">
		<div class="card-header my-3 text-center bg-warning"><h4>Beverages</h4></div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : beverage_products) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: Rs <%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>
	</div>
		<br>
		<br>
		
		
		
	
	<%@include file="/includes/footer.jsp"%>
</body>
</html>