<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Orders</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            padding: 2rem;
        }
        .text-success {
            color: #28a745;
        }
        .text-danger {
            color: #dc3545;
        }
        .fw-bold {
            font-weight: bold;
        }
        .card-sh {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            border-radius: 20px;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <p class="text-center fs-3">My Orders</p>

                <!-- Success Message -->
                <c:if test="${not empty sessionScope.succMsg}">
                    <p class="text-success fw-bold text-center">${sessionScope.succMsg}</p>
                    <c:out value="${sessionScope.succMsg = null}"/>
                </c:if>

                <!-- Error Message -->
                <c:if test="${not empty sessionScope.errorMsg}">
                    <p class="text-danger fw-bold text-center">${sessionScope.errorMsg}</p>
                    <c:out value="${sessionScope.errorMsg = null}"/>
                </c:if>

                <div class="col-md-12">
                    <table class="table table-bordered card-sh">
                        <thead>
                            <tr>
                                <th scope="col">Order Id</th>
                                <th scope="col">Date</th>
                                <th scope="col">Product Details</th>
                                <th scope="col">Price</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="o" items="${orders}">
                                <tr>
                                    <th scope="row">${o.orderId}</th>
                                    <td>${o.orderDate}</td>
                                    <td>${o.product.title}</td>
                                    <td>Quantity: ${o.quantity}<br>Price: ${o.price}<br>Total Price: ${o.quantity * o.price}</td>
                                    <td>${o.status}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${o.status != 'Cancelled'}">
                                                <a href="${pageContext.request.contextPath}/user/update-status?id=${o.id}&st=6" class="btn btn-sm btn-danger btn-custom">Cancel</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="#" class="btn btn-sm btn-danger disabled btn-custom">Cancel</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
