<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Login
    </title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-6 p-5">
                    <img alt="" src="img/ecom.png" width="100%" height="400px">
                </div>
                <div class="col-md-6 mt-3 p-5">
                    <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-header">
                            <p class="fs-4 text-center">Login</p>

                            <c:if test="${not empty param.error}">
                                <div class="alert alert-danger text-center">
                                    <c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
                                        ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
                                    </c:if>
                                </div>
                            </c:if>

                            <c:if test="${not empty param.logout}">
                                <div class="alert alert-success">
                                    Logout Successfully
                                </div>
                            </c:if>
                        </div>
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/login" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <input required class="form-control" name="username" type="email">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Password</label>
                                    <input required class="form-control" name="password" type="password">
                                </div>
                                <button type="submit" class="btn bg-primary text-white col-md-12">Login</button>
                            </form>
                        </div>
                        <div class="card-footer text-center">
                            <a href="${pageContext.request.contextPath}/forgot-password" class="text-decoration-none">Forgot Password</a><br>
                            Don't have an account? <a href="register" class="text-decoration-none">Create one</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Add Bootstrap JS and dependencies if needed -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
