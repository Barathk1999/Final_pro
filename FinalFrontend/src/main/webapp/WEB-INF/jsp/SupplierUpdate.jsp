<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
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
<div class="col-md-12  col-md-8">
	<form action="<c:url value="${PageContext}/UpdateSupplier"/>" method="post">
<table class="table table-bordered table-responsive" align="center">
	<tr bgcolor="#87ceeb">
		<td align="center" colspan="2"><h3>Supplier Details </h3></td>
	</tr>
	<tr>
		<td>Supplier Id</td>
		<td><input type="text" name="supplierId" class="form-control" value="${supplier.supplierId}" readonly/></td>
	</tr>
	<tr >
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" class="form-control"  value="${supplier.supplierName}"/></td>
	</tr>
	<tr >
		<td>Supplier Name</td>
		<td><input type="text" name="supplierDesc" class="form-control"  value="${supplier.supplierDesc}"/></td>
	</tr>
	<tr >
		<td>Supplier Name</td>
		<td><input type="text" name="addr" class="form-control"  value="${supplier.addr}"/></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Supplier Update" class="btn btn-info"/>
		</td>
	</tr>
</table>
</form>
</div>
</div>
</body>
</html>