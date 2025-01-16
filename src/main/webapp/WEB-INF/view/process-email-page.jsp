<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/5/2024
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Process Email</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container py-5">
    <!-- Greeting Section -->
    <div class="text-center mb-4">
        <h1 class="display-4">Hi, ${userInfo.userName}!</h1>
        <p class="lead text-muted">Your email has been successfully sent!</p>
    </div>

    <!-- Success Message -->
    <div class="card mx-auto shadow-sm border-success" style="max-width: 600px;">
        <div class="card-body text-center">
            <h3 class="card-title text-success mb-3">Email Sent Successfully!</h3>
            <p class="card-text">
                The email has been sent to <strong>${receiverEmailDto.email}</strong>.
            </p>
            <a href="/" class="btn btn-primary mt-3">Go Back Home</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
