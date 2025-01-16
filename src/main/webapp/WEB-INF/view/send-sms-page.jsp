<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- 
  Created by IntelliJ IDEA. 
  User: user 
  Date: 12/5/2024 
  Time: 20:03 
  To change this template use File | Settings | File Templates. 
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Share Result Page</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="container py-5">
  <!-- Greeting Section -->
  <div class="text-center mb-4">
    <h1 class="display-4">Hi, ${userInfo.userName}!</h1>
    <p class="lead text-muted">Your result is ready. Share it with your friends now!</p>
  </div>

  <!-- Form Section -->
  <div class="card mx-auto shadow-sm" style="max-width: 600px;">
    <div class="card-body">
      <h3 class="card-title text-center mb-4">Share By SMS</h3>
      <%--@elvariable id="smsReceiver" type="com.home"--%>
      <form:form action="/processSms" modelAttribute="smsReceiver">
        <div class="form-group">
          <label for="pn">Phone Number</label>
          <form:input path="phoneNumber" id="pn" class="form-control" placeholder="Enter your friend's phone number" />
        </div>
        <div class="text-center">
          <button type="submit" class="btn btn-primary btn-block">Send</button>
        </div>
      </form:form>
    </div>
  </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
