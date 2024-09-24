<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>All Products</title>
    <link rel="stylesheet" href="path-to-bootstrap-css">
    <link rel="stylesheet" href="path-to-fontawesome">
</head>
<body>
    <section>
        <div class="container-fluid mt-4 p-3">
            <div class="row">
                <p class="text-center fs-3 mt-2">All Products</p>
                <hr>
                <a href="/admin/" class="text-decoration-none"><i class="fa-solid fa-arrow-left"></i> Back</a>
                
                <!-- Success message -->
                <c:if test="${not empty sessionScope.succMsg}">
                    <p class="text-success fw-bold">${sessionScope.succMsg}</p>
                    <!-- Here, you can invoke your method to clear the session message if needed -->
                </c:if>

                <!-- Error message -->
                <c:if test="${not empty sessionScope.errorMsg}">
                    <p class="text-danger fw-bold">${sessionScope.errorMsg}</p>
                    <!-- Here, you can invoke your method to clear the session message if needed -->
                </c:if>

                <div class="col-md-4 p-3">
                    <form action="/admin/products" method="get">
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" name="ch">
                            </div>
                            <div class="col">
                                <button class="btn btn-primary col">Search</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="p-3">
                    <table class="table table-bordered">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Sl No</th>
                                <th scope="col">Image</th>
                                <th scope="col">Title</th>
                                <th scope="col">Category</th>
                                <th scope="col">Price</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Discount Price</th>
                                <th scope="col">Status</th>
                                <th scope="col">Stock</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="product" items="${products}" varStatus="status">
                                <tr>
                                    <th scope="row">${status.count}</th>
                                    <td><img src="${pageContext.request.contextPath}/img/product_img/${product.image}" width="70px" height="70px"></td>
                                    <td>${product.title}</td>
                                    <td>${product.category}</td>
                                    <td>${product.price}</td>
                                    <td>${product.discount}</td>
                                    <td>${product.discountPrice}</td>
                                    <td>${product.isActive}</td>
                                    <td>${product.stock}</td>
                                    <td>
                                        <a href="/admin/editProduct/${product.id}" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
                                        <a href="/admin/deleteProduct/${product.id}" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i> Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="row">
                        <div class="col-md-4">Total Products: ${totalElements}</div>
                        <div class="col-md-6">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item ${isFirst ? 'disabled' : ''}">
                                        <a class="page-link" href="/admin/products?pageNo=${pageNo-1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="1" end="${totalPages}" var="i">
                                        <li class="page-item ${pageNo+1 == i ? 'active' : ''}">
                                            <a class="page-link" href="/admin/products?pageNo=${i-1}">${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item ${isLast ? 'disabled' : ''}">
                                        <a class="page-link" href="/admin/products?pageNo=${pageNo+1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
