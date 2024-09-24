<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Reset Password</title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-6 p-5">
                    <img alt="E-commerce Image" src="${pageContext.request.contextPath}/img/ecom.png" width="100%" height="400px">
                </div>
                <div class="col-md-6 mt-3 p-5">
                    <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-header">
                            <p class="fs-4 text-center">Reset Password</p>
                            <c:if test="${sessionScope.succMsg != null}">
                                <p class="text-success fw-bold text-center">${sessionScope.succMsg}</p>
                                <% session.removeAttribute("succMsg"); %>
                            </c:if>

                            <c:if test="${sessionScope.errorMsg != null}">
                                <p class="text-danger fw-bold text-center">${sessionScope.errorMsg}</p>
                                <% session.removeAttribute("errorMsg"); %>
                            </c:if>
                        </div>
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/reset-password" method="post" id="resetPassword" novalidate>
                                <div class="mb-3">
                                    <label class="form-label">New Password</label>
                                    <input id="pass" class="form-control" name="password" type="password">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Confirm Password</label>
                                    <input name="confirmPassword" class="form-control" type="password">
                                </div>
                                <input type="hidden" value="${token}" name="token">
                                <button type="submit" class="btn bg-primary text-white col-md-12">Reset Password</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
