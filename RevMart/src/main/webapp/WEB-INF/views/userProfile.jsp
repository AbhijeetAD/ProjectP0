<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .profile-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 2px solid #007bff;
            object-fit: cover;
        }
        .form-section {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-section hr {
            border-top: 2px solid #007bff;
        }
        .btn-custom {
            background-color: #007bff;
            color: #ffffff;
            border-radius: 20px;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .text-muted {
            color: #6c757d;
        }
        .message {
            margin: 15px 0;
        }
        .success-message {
            display: none;
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1050;
            width: 300px;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <section>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <p class="fs-3 text-center mb-4">My Profile</p>

                    <!-- Success Message -->
                    <div id="success-message" class="success-message">
                        Update successful!
                    </div>
                    
                    <!-- Profile Image -->
                    <div class="text-center mb-4">
                        <img src="${pageContext.request.contextPath}/img/profile_img/${user.profileImage}"
                             alt="Profile Image"
                             class="profile-img">
                    </div>
                    
                    <!-- Profile Form -->
                    <div class="form-section">
                        <h4 class="text-center">Profile Information</h4>
                        <form id="profile-form" action="${pageContext.request.contextPath}/user/update-profile" method="post" enctype="multipart/form-data" onsubmit="return showSuccessMessage('profile-form')">
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <th scope="row">Name</th>
                                        <td>:</td>
                                        <td><input type="text" name="name" class="form-control" value="${user.name}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Mobile Number</th>
                                        <td>:</td>
                                        <td><input type="text" name="mobileNumber" class="form-control" value="${user.mobileNumber}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Email</th>
                                        <td>:</td>
                                        <td><input type="text" name="email" class="form-control" readonly value="${user.email}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Address</th>
                                        <td>:</td>
                                        <td><input type="text" name="address" class="form-control" value="${user.address}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">City</th>
                                        <td>:</td>
                                        <td><input type="text" name="city" class="form-control" value="${user.city}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">State</th>
                                        <td>:</td>
                                        <td><input type="text" name="state" class="form-control" value="${user.state}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Pincode</th>
                                        <td>:</td>
                                        <td><input type="text" name="pincode" class="form-control" value="${user.pincode}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Image</th>
                                        <td>:</td>
                                        <td><input type="file" name="img" class="form-control"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Role</th>
                                        <td>:</td>
                                        <td><input type="text" name="role" class="form-control" readonly value="${user.role}"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Account Status</th>
                                        <td>:</td>
                                        <td><input type="text" name="isEnable" class="form-control" readonly value="${user.isEnable}">
                                            <input type="hidden" name="id" value="${user.id}"></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="text-center">
                                            <button type="submit" class="btn btn-custom">Update</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    
                    <hr>
                    
                    <!-- Change Password Form -->
                    <div class="form-section mt-4">
                        <h4 class="text-center">Change Password</h4>
                        <form id="password-form" action="${pageContext.request.contextPath}/user/change-password" method="post" onsubmit="return showSuccessMessage('password-form')">
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <th scope="row">Current Password</th>
                                        <td><input type="password" name="currentPassword" class="form-control" required></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">New Password</th>
                                        <td><input type="password" name="newPassword" class="form-control" required></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Confirm Password</th>
                                        <td><input type="password" name="confirmPassword" class="form-control" required></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="text-center">
                                            <button type="submit" class="btn btn-custom">Update Password</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Custom JS -->
    <script>
        function showSuccessMessage(formId) {
            var form = document.getElementById(formId);
            var message = document.getElementById('success-message');

            message.style.display = 'block'; // Show the success message

            setTimeout(function() {
                message.style.display = 'none'; // Hide the message after 10 seconds
                form.submit(); // Submit the form after showing the message
            }, 10000); // 10 seconds

            return false; // Prevent default form submission
        }
    </script>
</body>
</html>
