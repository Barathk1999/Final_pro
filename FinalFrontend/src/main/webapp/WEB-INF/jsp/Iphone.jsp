<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>Iphone</title>
</head>

<style>
body {
	background-image: url("./images/5134336.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

.heading {
	font-size: 25px;
	margin-right: 25px;
}

.fa {
	font-size: 20px;
}

.checked {
	color: orange;
}
</style>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<img src="images/iphone11.jpg" style="width: 100px;height:200px" alt="Iphone11">

				<div class="col-sm-12">
					<div class="row">
						<button type="button" class="btn btn-primary shop-button">
							<i class="fa fa-shopping-cart"></i> Add to Cart
						</button>
						<button type="button" class="btn btn-success shop-button">Buy
							Now</button>
						<button class="btn btn-light" style='color: red'>
							<i class='fas fa-heart' style='font-size: 15px; color: red'></i>
						</button>

					</div>
				</div>

			</div>
			<div class="col-md-8">
				<h3>Iphone 11 pro (Purple, 128 GB) (4 GB RAM)</h3>
				<p>
					<strong><i class="fa fa-rupee"></i>49,999</strong>&nbsp;&nbsp;</br> <s><i
						class="fa fa-rupee"></i>59,999</s>&nbsp;&nbsp;<b style="color: green;">20%
						off</b></br>

				</p>

				<div class="table-responsive">
					<table class="table table-sm table-borderless mb-0">
						<tbody>
							<tr>
								<th><strong>Model Name</strong></th>
								<td>Iphone 11 pro</td>
							</tr>
							<tr>
								<th><strong>Color</strong></th>
								<td>Purple</td>
							</tr>
							<tr>
								<th><strong>Delivery</strong></th>
								<td>USA, Europe,India</td>
							</tr>
							<tr>
								<th><strong>Highlights</strong></th>
								<td>
									<ul>
										<li>4 GB RAM | 128 GB ROM</li>
										<li>6.1-inch (15.5 cm diagonal) Liquid Retina HD LCD
											display</li>
										<li>12MP Rear Camera | 12MP Front Camera</li>
										<li>Operating System | IOS 14</li>
										<li>5020 mAh Battery</li>
										<li>A13 Bionic chip with third-generation Neural Engine</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th><strong>In The Box</strong></th>
								<td>
									<ul>
										<li>Handset, Power Adapter, USB Type-C Cable, SIM Eject
											Tool, Simple Protective Cover, Warranty Card, User Guide</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row" style="margin-top: 15px;">
					<div class="col-xs-6">
						<div class="col-xs-6" style="margin-left: 15px;">
							<span class="product_options">RAM Options</span><br>
							<button class="btn btn-primary btn-sm">4 GB</button>
							<button class="btn btn-primary btn-sm">8 GB</button>
						</div>
						<div class="col-xs-6" style="margin-left: 15px;">
							<span class="product_options">Storage Options</span><br>
							<button class="btn btn-primary btn-sm">64 GB</button>
							<button class="btn btn-primary btn-sm">128 GB</button>
							<button class="btn btn-primary btn-sm">256 GB</button>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="col-xs-6">
							<strong>Quantity</strong> <select>
								<option value="">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>

							<p>
								<span class="heading">User Rating</span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							</p>
							<p>
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							</p>
							<p>
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
