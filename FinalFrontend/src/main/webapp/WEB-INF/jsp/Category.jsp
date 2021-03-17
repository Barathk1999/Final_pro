<%@include file="CommonHeader.jsp"%>
<style>
body {
	background-image: url("./images/5134336.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
<body>
	<div class="container">
		<div class="col-md-12 col-sm-8 ">
			<form action="<c:url value='/insertCategory'/>" method="post"
				align="center">

				<table class="table table-bordered table-responsive" align="center">
					<tr bgcolor="">
						<td colspan="2" bgcolor="#87ceeb"><h3>Insert Category</h3></td>
					</tr>
					<tr>
						<td>Category Id</td>
						<td><input type="text" class="form-control" name="categoryId" /></td>
					</tr>
					<tr>
						<td>Category Name</td>
						<td><input type="text" class="form-control"
							name="categoryName" /></td>
					</tr>
					<tr>
						<td>Category Description</td>
						<td><textarea row="5" cols="50" class="form-control"
								name="categoryDesc"></textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<center>
								<input type="submit" value="SUBMIT" class="btn btn-info">
							</center>
						</td>
					</tr>
				</table>
		</div>
		</form>
		<div class="col-md-12  col-sm-8">
			<table class="table table-striped  table-bordered ">
				<thead bgcolor="#87ceeb">
					<th>Category Id</th>
					<th>Category Name</th>
					<th>Category Desc</th>
					<th colspan='2'>Action</th>
				</thead>
				<c:forEach items="${categoryList }" var="category">
					<tr>
						<td>${category.categoryId}</td>
						<td>${category.categoryName}</td>
						<td>${category.categoryDesc}</td>

						<td><a
							href="<c:url value='/editCategory/${category.categoryId}'/>"
							class="btn btn-info">Edit</a></td>

						<td><a
							href="<c:url value='/deleteCategory/${category.categoryId }'/>"
							class="btn btn-danger">Delete</a></td>
					</tr>

				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>