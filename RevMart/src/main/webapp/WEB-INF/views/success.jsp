<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Product Ordered Successfully</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="<c:url value='/path/to/font-awesome/css/font-awesome.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/path/to/bootstrap/css/bootstrap.min.css'/>">
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
                        <a href="${pageContext.request.contextPath}/user/user-orders" class="btn btn-primary">Your Orders</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
