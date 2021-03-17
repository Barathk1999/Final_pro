<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<style>
body {
  background-image: url("./images/dreamstime_xxl_95108771.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<body>
<div class="container">
            <form class="form-horizontal" role="form" action="<c:url value='registerUser'/>" method="post">
                <h2 align="center">Registration</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="customerName"  name="customerName" placeholder="Name" class="form-control" autofocus required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userName" class="col-sm-3 control-label">UserName</label>
                    <div class="col-sm-9">
					<input type="text" id="username" class="form-control" name="username" placeholder="UserName"  required>     
					               </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="mb_no" class="col-sm-3 control-label">Mobile Number </label>
                    <div class="col-sm-9">
                        <input type="text" id="mobileNo" placeholder="Mobile Number" class="form-control" name= "mobileNo">
                    </div>
                </div>            
               
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="text" id="emailId" placeholder="Email" class="form-control" name="emailId">
                    </div>
                </div>
                
                <div class="form-group">
                        <label for="address" class="col-sm-3 control-label">Address </label>
                    <div class="col-sm-9">
                        <input type="text" id="address" placeholder="Address" name="address" class="form-control">
                    </div>
                </div>
                
            
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                         <button type="submit" name="submit" class="btn btn-primary btn-block">Register</button>
         
                    </div>
                </div>

</form>
<!-- /form -->
</div> <!-- ./container -->
</body>
</html>


