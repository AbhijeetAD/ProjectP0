<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <!-- Include Bootstrap or any other CSS you need here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <!-- Include FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <section>
        <div class="container p-5">
            <p class="text-center fs-3 mt-4">Admin Dashboard</p>
            <div class="row p-5">

                <div class="col-md-4 mt-2">
                    <a href="${pageContext.request.contextPath}/admin/loadAddProduct" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-primary">
                                <i class="fas fa-square-plus fa-3x"></i>
                                <h4>Add Product</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 mt-2">
                    <a href="${pageContext.request.contextPath}/admin/category" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-warning">
                                <i class="fas fa-list fa-3x"></i>
                                <h4>Add Category</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 mt-2">
                    <a href="${pageContext.request.contextPath}/admin/products" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-success">
                                <i class="fas fa-table-list fa-3x"></i>
                                <h4>View Product</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 mt-4">
                    <a href="${pageContext.request.contextPath}/admin/orders" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-warning">
                                <i class="fas fa-box-open fa-3x"></i>
                                <h4>Orders</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 mt-4">
                    <a href="${pageContext.request.contextPath}/admin/users?type=1" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-primary">
                                <i class="fas fa-circle-user fa-3x"></i>
                                <h4>Users</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 mt-4">
                    <a href="${pageContext.request.contextPath}/admin/add-admin" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-primary">
                                <i class="fas fa-user-plus fa-3x"></i>
                                <h4>Add Admin</h4>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4 mt-4">
                    <a href="${pageContext.request.contextPath}/admin/users?type=2" class="text-decoration-none">
                        <div class="card card-sh">
                            <div class="card-body text-center text-primary">
                                <i class="fas fa-circle-user fa-3x"></i>
                                <h4>Admin</h4>
                            </div>
                        </div>
                    </a>
                </div>

            </div>
        </div>
    </section>

    <!-- Include Bootstrap JS and other scripts -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
