<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Process Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .header {
            background-color: #ff6f91;
            color: white;
            padding: 15px 0;
        }

        .header h2, .header a {
            margin: 0;
            padding: 0 20px;
        }

        .header a {
            color: white;
            text-decoration: none;
        }

        .content {
            margin-top: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }

        .btn-custom {
            background-color: #ff6f91;
            color: white;
            border: none;
        }

        .btn-custom:hover {
            background-color: #e65c80;
        }

        footer {
            margin-top: 20px;
            padding: 10px;
            background-color: #f1f1f1;
            text-align: center;
        }
    </style>
</head>
<body>
<!-- Header Section -->
<div class="header d-flex justify-content-between align-items-center">
    <h2 class="ms-3">User Verification</h2>
    <a href="/verifyUser" class="me-3">Verify User</a>
</div>

<!-- Main Content Section -->
<div class="container content mt-4 p-4">
    <h1 class="text-center text-primary">Hi, ${userInfo.userName}!</h1>
    <div class="mt-4 text-center">
        <h2>Love Calculator</h2>
        <p class="text-muted">Check the compatibility between you and your crush!</p>
    </div>

    <hr/>

    <div class="text-center mt-4">
        <h5>Calculation Details:</h5>
        <p><strong>Your Name:</strong> ${userInfo.userName}</p>
        <p><strong>Crush's Name:</strong> ${userInfo.crushName}</p>
    </div>

    <hr/>

    <div class="text-center mt-4">
        <h4 class="text-success">Your Relationship with ${userInfo.crushName} is: <strong>${userInfo.result}!</strong></h4>
    </div>

    <hr/>

    <div class="d-flex justify-content-center mt-4">
        <a href="<c:url value="/sendEmail"/>" class="btn btn-custom me-2">>Share Result by Email</a>
        <a href="<c:url value="/sendSms"/>" class="btn btn-custom">>Share Result by SMS</a>
    </div>
</div>

<!-- Footer Section -->
<footer>
    <p>&copy; 2024 Love Calculator. All Rights Reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
