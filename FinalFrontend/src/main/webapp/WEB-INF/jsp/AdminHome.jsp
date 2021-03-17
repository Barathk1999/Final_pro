<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<style>
body {
  background-image: url("./images/5134336.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN HOME</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<img src="" />
			</div>
			<div class="col-sm-6">
				Welcome: ${sessionScope.username}

				<h1>Welcome Admin</h1>
			</div>
		</div>
	</div>
</body>
</html>
</body>
</html>