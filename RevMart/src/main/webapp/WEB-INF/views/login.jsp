<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="margin: 0; padding: 0; background-image: url('img/bg.jpg'); background-size: cover; background-position: center; background-attachment: fixed;">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg" style="background-color: #343a40; padding: 0.5rem 1rem; position: fixed; top: 0; width: 100%; z-index: 1000;">
        <div class="container-fluid">
            <img src="/img/logo.png" alt="Logo" height="50px" width="auto" style="border-radius: 30px;" />
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggler">
                <div class="search-bar" style="flex: 1; display: flex; justify-content: center;">
                    <form class="d-flex" style="width: 100%; max-width: 500px;">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="border-top-left-radius: 30px; border-bottom-left-radius: 30px; width: 80%;" />
                        <button class="btn btn-outline-light" type="submit" style="border-top-right-radius: 30px; border-bottom-right-radius: 30px; width: 20%; background-color: #f39c12; color: #ffffff;">Search</button>
                    </form>
                </div>
                <ul class="navbar-nav ms-auto">
               <!--      <li class="nav-item"><a class="nav-link active" aria-current="page" href="/" style="color: #ffffff; transition: color 0.3s;">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="products" style="color: #ffffff; transition: color 0.3s;">Products</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: #ffffff; transition: color 0.3s;">Category</a>
                        <ul class="dropdown-menu">
                            
                            <li><a class="dropdown-item" href="/products?category=Category1">Category1</a></li>
                            <li><a class="dropdown-item" href="/products?category=Category2">Category2</a></li>
                        </ul>
                    </li>-->
                    <li class="nav-item"><a class="nav-link" href="/aboutus1" style="color: #ffffff; transition: color 0.3s;">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="/register" style="color: #ffffff; transition: color 0.3s;">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <section style="display: flex; align-items: center; justify-content: center; min-height: 100vh; padding-top: 70px;"> <!-- Adjust padding-top to account for navbar height -->
        <div class="card shadow-sm p-4 mb-4" style="border: none; background-color: #c1bca6; border-radius: 25px; width: 100%; max-width: 500px;">
            <!-- Card header -->
            <div class="card-header" style="background-color: transparent; border-bottom: none;">
                <p class="fs-4 text-center" style="color:#938028;">Login</p>
            </div>

            <!-- Card body with the form -->
            <div class="card-body" style="padding-top: 0;">
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="mb-3">
                        <label class="form-label"><b>Email</b></label>
                        <input required class="form-control" name="username" type="email">
                    </div>

                    <div class="mb-3">
                        <label class="form-label"><b>Password</b></label>
                        <input required class="form-control" name="password" type="password">
                    </div>

                    <!-- Submit button -->
                    <button type="submit" class="btn btn-secondary col-md-12" style="background-color: #938028; border: none; transition: background-color 0.3s ease;">Login</button>
                </form>
            </div>

            <!-- Card footer with links -->
            <div class="card-footer text-center" style="background-color: transparent; border-top: none;">
                <a href="${pageContext.request.contextPath}/forgotPassword" class="text-decoration-none" style="color: #0072ff; transition: color 0.3s;">Forgot Password</a><br>
                Don't have an account? 
                <a href="${pageContext.request.contextPath}/register" class="text-decoration-none" style="color: #0072ff; transition: color 0.3s;">Create one</a>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
