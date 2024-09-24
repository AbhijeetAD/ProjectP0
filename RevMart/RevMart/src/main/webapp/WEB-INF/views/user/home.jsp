<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
            text-align: center;
        }
        h1 {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <h1>User Home Page</h1>
    <!-- You can add more dynamic content here using JSP expressions or scriptlets -->
    <p>Welcome, <%= request.getAttribute("username") %>!</p>
</body>
</html>
