<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">
</head>
<body>
	<section>
		<div class="container p-5 mt-3">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card card-sh">
						<div class="card-header text-center ">
							<p class="fs-4">Edit Product</p>

							<c:if test="${sessionScope.succMsg != null}">
								<p class="text-success fw-bold">${sessionScope.succMsg}</p>
								<c:set var="removeSessionMessage" value="${commnServiceImpl.removeSessionMessage()}" />
							</c:if>

							<c:if test="${sessionScope.errorMsg != null}">
								<p class="text-danger fw-bold">${sessionScope.errorMsg}</p>
								<c:set var="removeSessionMessage" value="${commnServiceImpl.removeSessionMessage()}" />
							</c:if>
						</div>
						
						<div class="card-body">
							<form action="${pageContext.request.contextPath}/admin/updateProduct" method="post" enctype="multipart/form-data">
								<input type="hidden" name="id" value="${product.id}">
								
								<div class="mb-3">
									<label>Enter Title</label>
									<input type="text" name="title" value="${product.title}" class="form-control">
								</div>

								<div class="mb-3">
									<label>Enter Description</label>
									<textarea rows="3" cols="" class="form-control" name="description">${product.description}</textarea>
								</div>

								<div class="row">
									<div class="mb-3 col">
										<label>Category</label>
										<select class="form-control" name="category">
											<option>${product.category}</option>
											<c:forEach var="c" items="${categories}">
												<option>${c.name}</option>
											</c:forEach>
										</select>
									</div>

									<div class="mb-3 col">
										<label>Enter Price</label>
										<input type="number" name="price" value="${product.price}" class="form-control">
									</div>
								</div>

								<div class="row">
									<div class="mb-3 col">
										<label>Discount</label>
										<input type="number" name="discount" value="${product.discount}" class="form-control">
									</div>

									<div class="mb-3 col">
										<label>Discount Price</label>
										<input type="number" readonly value="${product.discountPrice}" class="form-control">
									</div>
								</div>

								<div class="mb-3">
									<label>Status</label>

									<div class="form-check">
										<input class="form-check-input" type="radio" 
											<c:if test="${product.isActive == true}">checked</c:if> 
											value="true" name="isActive" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1">
											Active
										</label>
									</div>

									<div class="form-check">
										<input class="form-check-input" type="radio" 
											<c:if test="${product.isActive == false}">checked</c:if> 
											value="false" name="isActive" id="flexRadioDefault2">
										<label class="form-check-label" for="flexRadioDefault2">
											Inactive
										</label>
									</div>
								</div>

								<div class="row">
									<div class="mb-3 col">
										<label>Enter Stock</label>
										<input type="text" name="stock" value="${product.stock}" class="form-control">
									</div>

									<div class="mb-3 col">
										<label>Upload Image</label>
										<input type="file" name="file" class="form-control">
									</div>

									<div class="mt-1">
										<img src="<c:url value='/img/product_img/${product.image}' />" width="100px" height="100px">
									</div>
								</div>
								
								<button class="btn btn-primary col-md-12">Update</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
