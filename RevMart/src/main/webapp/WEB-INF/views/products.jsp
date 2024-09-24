<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Product Management</title>
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/css/fontawesome.min.css' />">
</head>
<body>
    <section>
        <div class="container-fluid mt-4 p-3">
            <div class="row">
                <p class="text-center fs-3 mt-2">All Products</p>
                <hr>
                <a href="<c:url value='/admin/' />" class="text-decoration-none">
                    <i class="fa-solid fa-arrow-left"></i> Back
                </a>

                <c:if test="${sessionScope.succMsg != null}">
                    <p class="text-success fw-bold">${sessionScope.succMsg}</p>
                    <c:out value="${sessionScope.removeSessionMessage()}" />
                </c:if>

                <c:if test="${sessionScope.errorMsg != null}">
                    <p class="text-danger fw-bold text-center">${sessionScope.errorMsg}</p>
                    <c:out value="${sessionScope.removeSessionMessage()}" />
                </c:if>

                <div class="col-md-4 p-3">
                    <form action="<c:url value='/admin/products' />" method="get">
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" name="ch" />
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
                            <c:forEach var="p" items="${products}" varStatus="c">
                                <tr>
                                    <th scope="row">${c.count}</th>
                                    <td>
                                        <img src="<c:url value='/img/product_img/${p.image}' />" 
                                             width="70px" height="70px" />
                                    </td>
                                    <td>${p.title}</td>
                                    <td>${p.category}</td>
                                    <td>${p.price}</td>
                                    <td>${p.discount}</td>
                                    <td>${p.discountPrice}</td>
                                    <td>${p.isActive}</td>
                                    <td>${p.stock}</td>
                                    <td>
                                        <a href="<c:url value='/admin/editProduct/${p.id}' />" 
                                           class="btn btn-sm btn-primary">
                                           <i class="fa-solid fa-pen-to-square"></i> Edit
                                        </a>
                                        <a href="<c:url value='/admin/deleteProduct/${p.id}' />" 
                                           class="btn btn-sm btn-danger">
                                           <i class="fa-solid fa-trash"></i> Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="row">
                        <div class="col-md-4">Total Product: ${totalElements}</div>
                        <div class="col-md-6">
                            <c:if test="${productsSize > 0}">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <li class="page-item ${isFirst ? 'disabled' : ''}">
                                            <a class="page-link" 
                                               href="<c:url value='/admin/products?pageNo=${pageNo - 1}' />" 
                                               aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:forEach var="i" begin="1" end="${totalPages}">
                                            <li class="page-item ${pageNo + 1 == i ? 'active' : ''}">
                                                <a class="page-link" 
                                                   href="<c:url value='/admin/products?pageNo=${i - 1}' />">
                                                    ${i}
                                                </a>
                                            </li>
                                        </c:forEach>
                                        <li class="page-item ${isLast ? 'disabled' : ''}">
                                            <a class="page-link" 
                                               href="<c:url value='/admin/products?pageNo=${pageNo + 1}' />" 
                                               aria-label="Next">
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
</body>
</html>
