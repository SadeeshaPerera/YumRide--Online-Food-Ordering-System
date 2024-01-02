
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp"><h1>YumRide</h1></a>
		
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Order <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<%
				
				
				if (auth!= null) {
				%>
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Order History</a></li>
				<li class="nav-item"><a class="nav-link" href="profilelogin.jsp">Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
				
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<%
				}
				%>
			</ul>
			
			
		</div>
	</div>
</nav>