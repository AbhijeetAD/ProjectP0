<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Forgot Password</title>
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-6 p-5">
                    <img alt="" src="${pageContext.request.contextPath}/img/ecom.png" width="100%" height="400px">
                </div>
                <div class="col-md-6 mt-3 p-5">
                    <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-header">
                            <p class="fs-4 text-center">Forgot Password</p>

                            <c:if test="${sessionScope.succMsg != null}">
                                <p class="text-success fw-bold text-center">${sessionScope.succMsg}</p>
                                <c:out value="${commnServiceImpl.removeSessionMessage()}"/>
                            </c:if>

                            <c:if test="${sessionScope.errorMsg != null}">
                                <p class="text-danger fw-bold text-center">${sessionScope.errorMsg}</p>
                                <c:out value="${commnServiceImpl.removeSessionMessage()}"/>
                            </c:if>

                        </div>
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/forgot-password" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <input required="required" class="form-control" name="email" type="email" placeholder="Enter your email">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn bg-primary text-white">Send</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
