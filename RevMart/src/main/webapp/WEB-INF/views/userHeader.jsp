<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout Header</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        
        .navbar-custom {
            background-color: #343a40;
            padding: 0.5rem 1rem;
        }
        
        .navbar-custom .navbar-brand {
            color: #ffffff;
            font-weight: bold;
            font-size: 1.5rem;
        }
        
        .navbar-custom .navbar-nav .nav-link {
            color: #ffffff;
            transition: color 0.3s;
        }
        
        .navbar-custom .navbar-nav .nav-link:hover {
            color: #f39c12; /* Gold color on hover */
        }
        
        .navbar-custom .search-bar {
            flex: 1;
            display: flex;
            justify-content: center;
        }
        
        .navbar-custom .search-bar form {
            width: 100%;
            max-width: 500px;
        }
        
        .navbar-custom .search-bar input {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
            width: 80%;
        }
        
        .navbar-custom .search-bar button {
            border-top-right-radius: 30px;
            border-bottom-right-radius: 30px;
            width: 20%;
            background-color: #f39c12;
            color: #ffffff;
        }
        
        .navbar-custom .search-bar button:hover {
            background-color: #e67e22;
        }
        
        .footer {
            background-color: #343a40;
            color: #ffffff;
            text-align: center;
            padding: 1rem;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <img src="/img/logo.png" alt="Logo" height="50px" width="auto" style="border-radius:30px"/>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggler">
                <div class="search-bar">
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">Search</button>
                    </form>
                </div>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                         <a class="nav-link" href="<c:url value='/products'/>">Products</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/about-us'/>">About Us</a>
                    </li>
                    <!-- Check if the user is not logged in -->
                    <%
                        if (session.getAttribute("user") == null) {
                    %>
                        
                        
                        <li class="nav-item">
                            <a class="nav-link" href="logout">Logout</a>
                        </li>
                    <% } %>
                </ul>
            </div>
        </div>
    </nav>

   

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
</html>
