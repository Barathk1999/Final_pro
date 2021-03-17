<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
body {
  background-image: url("https://image.freepik.com/free-vector/white-abstract-background-design_23-2148825582.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
<body>
	<div class="container">
		<div class="col-md-12  col-md-8">
			<form action="<c:url value="${PageContext}/updateCategory"/>"
				method="post">
				<table class="table table-bordered table-responsive" align="center">
					<tr bgcolor="#87ceeb">
						<td align="center" colspan="2"><h3>Category Detail</h3></td>
					</tr>
					<tr>
						<td>Category Id</td>
						<td><input type="text" name="categoryId" class="form-control"
							value="${category.categoryId}" readonly /></td>
					</tr>
					<tr>
						<td>Category Name</td>
						<td><input type="text" name="categoryName"
							class="form-control" value="${category.categoryName}" /></td>
					</tr>
					<tr>
						<td>Category Description</td>
						<td><textarea rows="5" cols="50" class="form-control"
								name="categoryDesc">${category.categoryDesc}</textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Update Category" class="btn btn-info" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>