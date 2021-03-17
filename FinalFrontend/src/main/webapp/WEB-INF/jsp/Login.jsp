<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<style>
body {
  background-image: url("./images/pexels-jessica-lewis-583846.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<div class="container-fluid">
<br/>
	<div class="row">
	<div class="col-xs-12 col-sm-7 col-md-8">
		<img src="" alt="Nature" style="width:100%">
	</div>
	<div class="col-xs-12 col-sm-5 col-md-4">
<br/><br/><br/><br/>

		<form action="perform_login" method="post">
			<table class="table table-bordered table-condensed" align="center">
				<thead>
					<tr bgcolor="orange">
						<th colspan="2">Sign In Here</th>
						</thead>
					</tr>
				
					<tr>
						<td>Login Name</td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr bgcolor="orange">
						<td colspan="2">
							<center>
								<input type="submit" value="Sign In" class="btn btn-info"/>
							</center>
						</td>
					</tr>
				
			</table>
		</form>
		</div>
	</div>
</div>
</body>
</html>