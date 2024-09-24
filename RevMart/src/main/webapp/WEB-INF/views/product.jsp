<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        .bg-primary-custom {
            background-color: #007bff;
        }
        .btn-custom {
            background-color: #007bff;
            color: #fff;
            border-radius: 20px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .card-img-top {
            object-fit: cover;
        }
        .active {
            background-color: #e9ecef !important;
        }
        .pagination .page-item.active .page-link {
            background-color: #007bff;
            border-color: #007bff;
        }
        .pagination .page-item.disabled .page-link {
            background-color: #f8f9fa;
            border-color: #dee2e6;
        }
        .list-group-item {
            border-radius: 0;
        }
        .card-sh {
            border-radius: 10px;
        }
        .text-dark {
            color: #212529 !important;
        }
    </style>
</head>
<body>

    <section>
        <div class="container-fluid bg-primary-custom p-5 mt-5">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <form action="/products" method="get">
                        <div class="input-group">
                            <input type="text" class="form-control" name="ch">
                            <button class="btn btn-custom ms-3 col-md-2">
                                <i class="fas fa-search"></i> Search
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="container-fluid mt-1">
            <div class="row">
                <div class="col-md-2 p-0">
                    <div class="card shadow-sm p-0 mb-5 bg-body rounded card-sh">
                        <div class="card-body">
                            <div class="list-group">
                                <p class="fs-5">Category</p>
                                <a href="/products"
                                   class="list-group-item list-group-item-action ${paramValue == '' ? 'active' : ''}">
                                    All
                                </a>
                                <c:forEach var="c" items="${categories}">
                                    <a href="/products?category=${c.name}"
                                       class="list-group-item list-group-item-action ${paramValue == c.name ? 'active' : ''}">
                                        ${c.name}
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="card shadow-sm p-3 mb-5 bg-body rounded card-sh">
                        <div class="card-body">
                            <p class="fs-3 text-center">Products</p>
                            <div class="row">
                                <c:choose>
                                    <c:when test="${productsSize > 0}">
                                        <c:forEach var="p" items="${products}">
                                            <div class="col-md-3 mb-4">
                                                <div class="card">
                                                    <img class="card-img-top"
                                                         src="/img/product_img/${p.image}"
                                                         alt="${p.title}"
                                                         width="100%" height="150px">
                                                    <div class="card-body">
                                                        <p class="fs-5 text-center">${p.title}</p>
                                                        <div class="text-center">
                                                            <p class="fs-6 fw-bold">
                                                                <span>&#8377; ${p.discountPrice}</span> <br>
                                                                <span class="text-decoration-line-through text-secondary">
                                                                    &#8377; ${p.price}
                                                                </span>
                                                                <span class="fs-6 text-success">
                                                                    ${p.discount}% off
                                                                </span>
                                                            </p>
                                                            <a href="/product/${p.id}"
                                                               class="btn btn-custom col-md-6 offset-md-3">
                                                                View Details
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="fs-4 text-center mt-4 text-danger">Product not available</p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                    <!-- Start Pagination -->
                    <div class="row">
                        <div class="col-md-4">
                            Total Products : ${totalElements}
                        </div>
                        <div class="col-md-6">
                            <c:if test="${productsSize > 0}">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li class="page-item ${isFirst ? 'disabled' : ''}">
                                            <a class="page-link" href="/products?pageNo=${pageNo - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:forEach var="i" begin="1" end="${totalPages}">
                                            <li class="page-item ${pageNo + 1 == i ? 'active' : ''}">
                                                <a class="page-link" href="/products?pageNo=${i - 1}">
                                                    ${i}
                                                </a>
                                            </li>
                                        </c:forEach>
                                        <li class="page-item ${isLast ? 'disabled' : ''}">
                                            <a class="page-link" href="/products?pageNo=${pageNo + 1}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </c:if>
                        </div>
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
