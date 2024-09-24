<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Message</title>
    <!-- Add Bootstrap CSS if needed -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-6 p-5 text-center offset-md-3">
                    <h3>${msg}</h3>
                </div>
            </div>
        </div>
    </section>
    <!-- Add Bootstrap JS and dependencies if needed -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
