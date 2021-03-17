<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER Home</title>
</head>
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.card button:hover {
	opacity: 0.7;
}

.row {
	border-spacing: 10px;
}
</style>
<body>
	<div class="container-fluid">
		<div class="row">

			<i><b>Welcome : ${sessionScope.username} Enjoy your shopping..!!</b></i> </br> </br>
			<h4 align="center">Shop Here..!!!</h4>
			&nbsp;

		</div>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/iphone11.jpg"> <img src="images/iphone11.jpg" class="img-thumbnail" style="width: 100px;height:200px"></a> 
						<a href="Iphone"> <h1>Iphone 11</h1> </a>
						<p class="price"></i>Rs-49,999</p>
						<p>IPhone 11 is one of the top selling smartphones that is available at a starting price of Rs 49,999.</p>
						<p>
							<button>
								<i class="fa fa-shopping-cart"></i> Add to Cart
							</button>
						</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/one+ 8T.jpg"> <img src="images/one+ 8T.jpg" class="img-thumbnail" style="width: 150px;height:200px" />
						</a>
						<h1>One plus 8T</h1>
						<p class="price">Rs-38,999</p>
						<p>One plus 8T is one of the top selling smartphones that is available at a starting price of Rs 38,999.</p>
						<p>
							<button>
								<i class="fa fa-shopping-cart"></i> Add to Cart
							</button>
						</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/LG.jpg"> <img src="images/LG.jpg" class="img-thumbnail" style="width: 100px;height:200px" />
						</a>
						<h3>LG W41</h3>
						<p class="price">Rs-12,990</p>
						<p>LG W41 comes with larger screen 6.55 inches, Quad Camera And long lasting battery at a price that makes you happy.</p>
						<p>
							<button>
								<i class="fa fa-shopping-cart"></i> Add to Cart
							</button>
						</p>
					</div>
				</div>
			</div>
			</br>
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/Sam G N 10.jpg"> <img src="images/Sam G N 10.jpg" class="img-thumbnail" style="width: 100px;height:200px" />
						</a>
						<h3>Samsung Galaxy Note10 Lite</h3>
						<p class="price">Rs-29,999</p>
						<p>Introducing next-level power. With Galaxy Note10 Lite With Triple Camera Setup</p>
						<p>
							<button>
								<i class="fa fa-shopping-cart"></i> Add to Cart
							</button>
						</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/one+.jpg"> <img src="images/one+.jpg" class="img-thumbnail" style="width: 100px;height:200px" />
						</a>
						<h3>OnePlus Nord 5G </h3>
						<p class="price">Rs-29,999</p>
						<p>Nord, the latest product line by the Number 1 premium smartphone in India - OnePlus</p>
						<p>
							<button>
								<i class="fa fa-shopping-cart"></i> Add to Cart
							</button>
						</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/Sam.jpg"> <img src="images/Sam.jpg" class="img-thumbnail" style="width: 100px;height:200px" />
						</a>
						<h3>Samsung Galaxy S20 FE</h3>
						<p class="price">Rs-9,990</p>
						<p>Galaxy S20 FE series introduce the next generation of mobile innovation.</p>
						<p>
							<button>
								<i class="fa fa-shopping-cart"></i> Add to Cart
							</button>
						</p>
					</div>
				</div>

			</div>
		</div>
</body>
</html>