<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Index User</title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <!-- Start Slider  -->
        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/img/ecom1.png" class="d-block w-100" alt="..." height="350px">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/img/ecom3.jpg" class="d-block w-100" alt="..." height="350px">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/img/ecom2.jpg" class="d-block w-100" alt="..." height="350px">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- End Slider  -->

        <!-- Start Category Module -->
        <div class="container">
            <div class="row">
                <p class="text-center fs-4">Category</p>
                <c:forEach var="c" items="${category}">
                    <div class="col-md-2">
                        <div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">
                            <div class="card-body text-center">
                                <img src="${pageContext.request.contextPath}/img/category_img/${c.imageName}" width="65%" height="140px"><br>
                                <a href="${pageContext.request.contextPath}/products?category=${c.name}" class="text-decoration-none">${c.name}</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- End Category Module -->

        <!-- Start Latest Product Module -->
        <div class="container-fluid bg-light p-3">
            <div class="row">
                <p class="text-center fs-4">Latest Product</p>
                <c:forEach var="p" items="${products}">
                    <div class="col-md-3">
                        <div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">
                            <div class="card-body text-center">
                                <img alt="" src="${pageContext.request.contextPath}/img/product_img/${p.image}" width="65%" height="140px">
                                <p class="text-center">
                                    <a href="${pageContext.request.contextPath}/product/${p.id}" class="text-decoration-none">${p.title}</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- End Latest Product Module -->
    </section>

    <!-- Add Bootstrap JS and dependencies if needed -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
