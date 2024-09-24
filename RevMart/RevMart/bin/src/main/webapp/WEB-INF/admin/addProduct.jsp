<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
	<section>
		<div class="container p-5 mt-3">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card card-sh">
						<div class="card-header text-center ">
							<p class="fs-4">Add Product</p>

							<!-- Check for success message -->
							<c:if test="${not empty sessionScope.succMsg}">
								<p class="text-success fw-bold">${sessionScope.succMsg}</p>
								<%
									// Assuming removeSessionMessage() is a method in your service class to clear session messages
									//commnServiceImpl.removeSessionMessage();
								%>
							</c:if>

							<!-- Check for error message -->
							<c:if test="${not empty sessionScope.errorMsg}">
								<p class="text-danger fw-bold">${sessionScope.errorMsg}</p>
								<%
									//commnServiceImpl.removeSessionMessage();
								%>
							</c:if>

						</div>
						<div class="card-body">
							<form action="${pageContext.request.contextPath}/admin/saveProduct" method="post"
								enctype="multipart/form-data">
								<div class="mb-3">
									<label>Enter Title</label> 
									<input type="text" name="title" class="form-control">
								</div>

								<div class="mb-3">
									<label>Enter Description</label>
									<textarea rows="3" class="form-control" name="description"></textarea>
								</div>

								<div class="mb-3">
									<label>Category</label> 
									<select class="form-control" name="category">
										<option>--select--</option>
										<c:forEach var="c" items="${categories}">
											<option value="${c.id}">${c.name}</option>
										</c:forEach>
									</select>
								</div>

								<div class="mb-3">
									<label>Enter Price</label> 
									<input type="number" name="price" class="form-control">
								</div>

								<div class="mb-3">
									<label>Status</label>
									<div class="form-check">
										<input class="form-check-input" type="radio" checked value="true" name="isActive" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1">Active</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="isActive" value="false" id="flexRadioDefault2">
										<label class="form-check-label" for="flexRadioDefault2">Inactive</label>
									</div>
								</div>

								<div class="row">
									<div class="mb-3 col">
										<label>Enter Stock</label> 
										<input type="text" name="stock" class="form-control">
									</div>

									<div class="mb-3 col">
										<label>Upload Image</label> 
										<input type="file" name="file" class="form-control">
									</div>
								</div>
								<button class="btn btn-primary col-md-12">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
