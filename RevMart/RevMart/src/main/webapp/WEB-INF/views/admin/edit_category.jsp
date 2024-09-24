<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Edit Category</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css' />">
</head>
<body>
	<section>
		<div class="container-fluid p-5 mt-5">
			<div class="row">
				<div class="col-md-3 offset-md-5">
					<div class="card card-sh">
						<div class="card-header text-center ">
							<p class="fs-4">Edit Category</p>
							
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
							<form action="${pageContext.request.contextPath}/admin/updateCategory" method="post" enctype="multipart/form-data">
								<input type="hidden" name="id" value="${category.id}">
								
								<div class="mb-3">
									<label>Enter Category</label>
									<input type="text" name="name" value="${category.name}" class="form-control">
								</div>

								<div class="mb-3">
									<label>Status</label>
									<div class="form-check">
										<input class="form-check-input" type="radio" 
											<c:if test="${category.isActive == true}">checked</c:if> 
											value="true" name="isActive" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1">Active</label>
									</div>
									
									<div class="form-check">
										<input class="form-check-input" type="radio" 
											<c:if test="${category.isActive == false}">checked</c:if> 
											value="false" name="isActive" id="flexRadioDefault2">
										<label class="form-check-label" for="flexRadioDefault2">Inactive</label>
									</div>
								</div>

								<div class="mb-3">
									<label>Upload Image</label>
									<input type="file" name="file" class="form-control">
								</div>

								<img src="<c:url value='/img/category_img/${category.imageName}' />" width="100px" height="100px">
								<button class="btn btn-primary col-md-12 mt-2">Update</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
