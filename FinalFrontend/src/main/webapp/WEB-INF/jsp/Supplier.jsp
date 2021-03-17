<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
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
	<form action="<c:url value='insertsupplier'/>" method="post" align="center">
	
		<table  class="table table-bordered table-responsive" align="center">
			<tr bgcolor="">
				<td colspan="2" bgcolor="#87ceeb"><h3>Insert Supplier</h3></td>
			</tr>
			<tr>
				<td>Supplier Id</td>
				<td><input type="text" class="form-control" name="supplierId"/></td>
			</tr>
			<tr>
				<td>Supplier Name</td>
				<td><input type="text" class="form-control" name="supplierName"/></td>
			</tr>
			<tr>
				<td>Supplier Description</td>
				<td><input type="text" class="form-control" name="supplierDesc"/></td>
			</tr>
			<tr>
				<td>Supplier Address</td>
				<td><input type="text" class="form-control" name="addr"/></td>
			</tr>
			<tr >
				<td colspan="2" >
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
			<th>Supplier Id</th>
			<th>Supplier Name</th>
			<th>Supplier Desc</th>
			<th>Supplier Addr</th>
		
			<th colspan='2'>Action</th>
		</thead>
	<c:forEach items="${supplierList }" var="supplier">
		<tr>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.supplierDesc}</td>
			<td>${supplier.addr}</td>
			
			<td><a href="<c:url value='/editSupplier/${supplier.supplierId}'/>" class="btn btn-info">Edit</a></td>
			
			<td><a href="<c:url value='/deleteSupplier/${supplier.supplierId }'/>" class="btn btn-danger">Delete</a></td>
		</tr>
	
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>