<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzPo9uv7MUCwwLTBVLgf29PIwG_Or3n2uVw&usqp=CAU">
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
  rel="stylesheet"
/>


<style>
.gradient-custom-3 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
}

</style>
</head>
<body>
	
<!-- 	<form action="insert" method="post"> -->
<!-- 		Name <input type="text" name="name"><br> -->
<!-- 		Email <input type="text" name="email"><br> -->
<!-- 		Phone Number <input type="text" name="phone"><br> -->
<!-- 		Delivery Address <input type="text" name="address"><br> -->
<!-- 		User Name <input type="text" name="uid"><br> -->
<!-- 		Password <input type="password" name="psw"><br> -->
<!-- 		Your Role(Customer/Admin/Delivery Person)<input type="text" name="role"><br> -->
		
<!-- 		<input type="submit" name="submit" value="Create An Account"> -->
<!-- 	</form> -->
	
	
	
	
	<section class="vh-100 bg-image "
  style="background-image: url('https://images.pexels.com/photos/16962424/pexels-photo-16962424/free-photo-of-street-food-menu-on-tray.jpeg?auto=compress&cs=tinysrgb&w=600');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3 overflow-auto">
    <div class="container h-100 p-4 ">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an Account</h2>

              <form action="insert" method="post">

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="name" required/>
                  <label class="form-label" for="form3Example1cg">Your Name</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" name="email" required/>
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>
                
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example3cg" class="form-control form-control-lg" name="phone" required/>
                  <label class="form-label" for="form3Example3cg">Your Phone Number</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example3cg" class="form-control form-control-lg" name="address" required/>
                  <label class="form-label" for="form3Example3cg">Delivery Address</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example3cg" class="form-control form-control-lg" name="uid" required/>
                  <label class="form-label" for="form3Example3cg">Username</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" name="psw" required />
                  <label class="form-label" for="form3Example4cg">Password</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="role" required />
                  <label class="form-label" for="form3Example4cdg">Role: Customer/Delivery Person/Admin</label>
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
<!--                   <button type="button" -->
<!--                     class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button> -->
                    <input type="submit" name="submit" value="Create An Account" class="btn btn-dark btn-lg btn-block">
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login.jsp"
                    class="fw-bold text-body"><u>Login here</u></a></p>

              </form>
			
            </div>
            
          </div>
        </div>
       	<br><br>
       	<hr>
        <h4><center>Taste in Your FingerTips</center></h4>
        <h5><center>YumRide</center></h5>
        <hr>
      </div>
    </div>
  </div>
  	
</section>
	
	
	
	
	
	
	
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"
></script>
</body>
</html>

