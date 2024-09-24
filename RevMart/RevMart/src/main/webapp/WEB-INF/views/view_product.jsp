<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Product Details</title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add FontAwesome CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/all.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="container card-sh" style="margin-top: 70px; margin-bottom: 100px">
            <div class="col-md-12 p-5">
                <div class="row">
                    <!-- Check for success message -->
                    <c:if test="${sessionScope.succMsg != null}">
                        <p class="text-success alert alert-success text-center" role="alert"><c:out value="${sessionScope.succMsg}"/></p>
                        <c:set var="removeSessionMessage" value="${sessionScope.succMsg}" scope="session"/>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <!-- Check for error message -->
                    <c:if test="${sessionScope.errorMsg != null}">
                        <p class="text-danger alert alert-danger text-center" role="alert"><c:out value="${sessionScope.errorMsg}"/></p>
                        <c:set var="removeSessionMessage" value="${sessionScope.errorMsg}" scope="session"/>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <div class="col-md-6 text-end">
                        <img alt="" src="<c:url value='/img/product_img/${product.image}'/>" width="300px" height="250px">
                    </div>

                    <div class="col-md-6">
                        <p class="fs-3"><c:out value="${product.title}"/></p>
                        <p>
                            <span class="fw-bold">Description : </span><br><c:out value="${product.description}"/>
                        </p>
                        <p>
                            <span class="fw-bold">Product Details: </span><br>
                            Status :
                            <c:choose>
                                <c:when test="${product.stock > 0}">
                                    <span class="badge bg-success">Available</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge bg-warning">Out of Stock</span>
                                </c:otherwise>
                            </c:choose>
                            <br> Category: <c:out value="${product.category}"/><br>
                            Policy : 7 Days Replacement & Return
                        </p>
                        <p class="fs-5 fw-bold">
                            Price :&nbsp; &nbsp; &nbsp; &nbsp;<i class="fas fa-rupee-sign"></i>
                            <c:out value="${product.discountPrice}"/> <span class="fs-6 text-decoration-line-through text-secondary"><c:out value="${product.price}"/></span>
                            <span class="fs-6 text-success"><c:out value="${product.discount}"/>% off</span>
                        </p>

                        <div class="row">
                            <div class="col-md-4 text-success text-center p-2">
                                <i class="fas fa-money-bill-wave fa-2x"></i>
                                <p>Cash On Delivery</p>
                            </div>
                            <div class="col-md-4 text-danger text-center p-2">
                                <i class="fas fa-undo-alt fa-2x"></i>
                                <p>Return Available</p>
                            </div>
                            <div class="col-md-4 text-primary text-center p-2">
                                <i class="fas fa-truck-moving fa-2x"></i>
                                <p>Free Shipping</p>
                            </div>
                        </div>

                        <c:choose>
                            <c:when test="${product.stock > 0}">
                                <c:choose>
                                    <c:when test="${user == null}">
                                        <a href="<c:url value='/signin'/>" class="btn btn-danger col-md-12">Add To Cart</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="<c:url value='/user/addCart?pid=${product.id}&uid=${user.id}'/>" class="btn btn-danger col-md-12">Add To Cart</a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="#" class="btn text-white btn-warning col-md-12">Out of Stock</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
