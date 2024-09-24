<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Product Ordered Successfully</title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add FontAwesome CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/all.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-6 offset-md-3 text-center">
                    <i class="fa-solid fa-circle-check fa-5x text-success"></i>
                    <p class="fs-3">Product Ordered Successfully</p>
                    <p class="fs-4">Product will be delivered within 7 days</p>
                    <div class="text-center">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-primary">Home</a>
                        <a href="${pageContext.request.contextPath}/user/user-orders" class="btn btn-primary">Your Order</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
