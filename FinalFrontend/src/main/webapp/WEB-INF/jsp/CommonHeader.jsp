<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Daily Deals</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	type="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div>
	<table cellspacing="2" width="100%">
	<tr bgcolor="white">
		<td colspan="2">
		<p align="right">
		<a>Connect with US</a>
		<a href="https://www.facebook.com/"><img src="https://i.pinimg.com/736x/d5/18/ec/d518eceea19f4b1a2ee032ddc634dd7d.jpg" width="50" height="50"></a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="https://in.linkedin.com/"><img src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-linkedin-circle-512.png" width="50" height="50"></a>&nbsp;&nbsp;|&nbsp;&nbsp;
		<a href="https://twitter.com/"><img src="https://static01.nyt.com/images/2014/08/10/magazine/10wmt/10wmt-articleLarge-v4.jpg?quality=75&auto=webp&disable=upscale" width="50" height="50"></a>&nbsp;&nbsp;|&nbsp;&nbsp;
		</p>
		</td>
	</tr>
	</table>
</div>
	<nav class="navbar navbar-expand-sm navbar-light bg-warning">
		<a class="navbar-brand" href="#">
		 <img src="https://image.shutterstock.com/image-vector/daily-deal-grunge-rubber-stamp-260nw-213653254.jpg" alt="logo" style="width: 40px;height:40px">
		</a>
		<ul class="navbar-nav">

			<c:if test="${sessionScope.role==null}">
				<li class="nav-item"><a class="nav-link" href="index">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="Login">Login</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="register">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="aboutUs">About Us</a></li>
				<li class="nav-item"><a class="nav-link" href="contact">Contact Us</a>
				</li>
			</c:if>
			<c:if test="${sessionScope.role!=null}">
				<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
					<li><a href="showCategory">Manage Categories</a></li>
						<li><a href="showSupplier">Manage Supplier</a></li>
						<li><a href="showProduct">Manage Product</a></li>
						<li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
				</c:if>
				<c:if test="${sessionScope.role=='ROLE_USER'}">
					<li class="nav-item"><a class="nav-link" href="userpage">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="products">Products</a>
					</li>
					<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
				</c:if>
			</c:if>
		</ul>
	</nav>
</body>
</html>