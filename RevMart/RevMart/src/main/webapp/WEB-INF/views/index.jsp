<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/font-awesome.min.css' />">
</head>
<body>
	<section>
		<div class="container p-5">
			<p class="text-center fs-3 mt-4">Admin Dashboard</p>
			<div class="row p-5">
				
				<div class="col-md-4 mt-2">
					<a href="${pageContext.request.contextPath}/admin/loadAddProduct" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa fa-square-plus fa-3x"></i>
								<h4>Add Product</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-2">
					<a href="${pageContext.request.contextPath}/admin/category" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-warning">
								<i class="fa fa-list fa-3x"></i>
								<h4>Add Category</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-2">
					<a href="${pageContext.request.contextPath}/admin/products" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-success">
								<i class="fa fa-table-list fa-3x"></i>
								<h4>View Product</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-4">
					<a href="${pageContext.request.contextPath}/admin/orders" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-warning">
								<i class="fa fa-box-open fa-3x"></i>
								<h4>Orders</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-4">
					<a href="${pageContext.request.contextPath}/admin/users?type=1" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa fa-circle-user fa-3x"></i>
								<h4>Users</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-4">
					<a href="${pageContext.request.contextPath}/admin/add-admin" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa fa-user-plus fa-3x"></i>
								<h4>Add Admin</h4>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-4 mt-4">
					<a href="${pageContext.request.contextPath}/admin/users?type=2" class="text-decoration-none">
						<div class="card card-sh">
							<div class="card-body text-center text-primary">
								<i class="fa fa-circle-user fa-3x"></i>
								<h4>Admin</h4>
							</div>
						</div>
					</a>
				</div>
				
			</div>
		</div>
	</section>
</body>
</html>
