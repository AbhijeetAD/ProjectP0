<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card-sh {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .card-header {
            background-color: #007bff;
            color: #ffffff;
            padding: 1rem;
            border-bottom: 2px solid #0056b3;
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
        .btn-warning {
            background-color: #ffc107;
            border-color: #ffc107;
            color: #212529;
            border-radius: 20px;
            transition: background-color 0.3s ease, border-color 0.3s ease;
        }
        .btn-warning:hover {
            background-color: #e0a800;
            border-color: #d39e00;
        }
        .table img {
            border-radius: 8px;
        }
        .text-center a {
            color: #007bff;
            font-size: 1.2rem;
        }
        .text-center a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <section>
        <div class="container-fluid mt-5 p-5">
            <div class="card card-sh">
                <div class="card-header text-center">
                    <p class="fs-4">Cart Page</p>

                    <!-- Success Message -->
                    <c:if test="${not empty sessionScope.succMsg}">
                        <p class="text-success fw-bold">${sessionScope.succMsg}</p>
                        <c:set var="dummy" value="${commnServiceImpl.removeSessionMessage()}"/>
                    </c:if>

                    <!-- Error Message -->
                    <c:if test="${not empty sessionScope.errorMsg}">
                        <p class="text-danger fw-bold">${sessionScope.errorMsg}</p>
                        <c:set var="dummy" value="${commnServiceImpl.removeSessionMessage()}"/>
                    </c:if>
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Sl No</th>
                                <th scope="col">Image</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Price</th>
                                <th scope="col" class="text-center">Quantity</th>
                                <th scope="col">Total Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cart" items="${carts}">
                                <tr>
                                    <th scope="row">${cart.count}</th>
                                    <td><img src="${pageContext.request.contextPath}/img/product_img/${cart.product.image}" width="70" height="70" alt="Product Image"></td>
                                    <td>${cart.product.title}</td>
                                    <td>${cart.product.discountPrice}</td>
                                    <td class="text-center">
                                        <a href="${pageContext.request.contextPath}/user/cartQuantityUpdate?sy=de&cid=${cart.id}" class="text-danger">
                                            <i class="fas fa-minus"></i>
                                        </a> 
                                        [ ${cart.quantity} ] 
                                        <a href="${pageContext.request.contextPath}/user/cartQuantityUpdate?sy=in&cid=${cart.id}" class="text-success">
                                            <i class="fas fa-plus"></i>
                                        </a>
                                    </td>
                                    <td>${cart.totalPrice}</td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan="4"></td>
                                <td class="fw-bold">Total Price</td>
                                <td class="fw-bold">&#8377; ${totalOrderPrice}</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="text-center">
                        <a href="${pageContext.request.contextPath}/user/orders" class="btn btn-warning">Proceed to Payment</a>
                    </div>
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
