<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-5 p-5">
                    <img alt="E-commerce Image" src="${pageContext.request.contextPath}/img/ecom.png" width="100%" height="400px">
                </div>
                <div class="col-md-7 p-2">
                    <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-header text-center">
                            <p class="fs-4 text-center">Register</p>
                            <c:if test="${sessionScope.succMsg != null}">
                                <p class="text-success fw-bold">${sessionScope.succMsg}</p>
                                <% session.removeAttribute("succMsg"); %>
                            </c:if>

                            <c:if test="${sessionScope.errorMsg != null}">
                                <p class="text-danger fw-bold">${sessionScope.errorMsg}</p>
                                <% session.removeAttribute("errorMsg"); %>
                            </c:if>
                        </div>
                        <div class="card-body">
                            <form action="/saveUser" enctype="multipart/form-data" id="userRegister" novalidate method="post">
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label">Full Name</label>
                                        <input required class="form-control" name="name" type="text">
                                    </div>
                                    <div class="col">
                                        <label class="form-label">Mobile Number</label>
                                        <input required class="form-control" name="mobileNumber" type="number">
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <input required class="form-control" name="email" type="email">
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <label class="form-label">Address</label>
                                        <input required class="form-control" name="address" type="text">
                                    </div>
                                    <div class="col">
                                        <label class="form-label">City</label>
                                        <input required class="form-control" name="city" type="text">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <label class="form-label">State</label>
                                        <input required class="form-control" name="state" type="text">
                                    </div>
                                    <div class="col">
                                        <label class="form-label">Pincode</label>
                                        <input required class="form-control" name="pincode" type="number">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <label class="form-label">Password</label>
                                        <input required class="form-control" name="password" type="password" id="pass">
                                    </div>
                                    <div class="col">
                                        <label class="form-label">Confirm Password</label>
                                        <input required class="form-control" name="confirmpassword" type="password">
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Profile Image</label>
                                    <input class="form-control" name="img" type="file">
                                </div>

                                <button type="submit" class="btn bg-primary text-white col-md-12">Register</button>
                            </form>
                        </div>

                        <div class="card-footer text-center">
                            Have an account? <a href="${pageContext.request.contextPath}/login" class="text-decoration-none">Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
