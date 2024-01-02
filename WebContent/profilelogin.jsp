<!DOCTYPE html>
<html>
<head>
<title>Login|YumRide</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
</head>
<body>
	

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Please Enter Credentials Again</div>
			<div class="card-body">
				<form action="login" method="post">
					<div class="form-group">
						<label>Username</label> 
						<input type="text" name="username" class="form-control" placeholder="Enter Username">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="password" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
					<br>
					
 					 </div>
					
				</form>
			</div>
		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>