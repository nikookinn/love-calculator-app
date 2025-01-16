<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Love Calculation</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1524744450030-b20eeb9a6c3c?fit=crop&w=1920&h=1080&q=80') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            max-width: 600px;
            margin: 50px auto;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .form-container h1 {
            font-family: 'Great Vibes', cursive;
            font-size: 3rem;
            color: #ff6f91;
            text-align: center;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        .btn-custom {
            background-color: #ff6f91;
            color: white;
            border: none;
            font-size: 1.2rem;
            padding: 10px 20px;
        }

        .btn-custom:hover {
            background-color: #ff4a70;
        }

        .error {
            color: red;
            font-size: 0.9rem;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
            color: #eee;
            font-size: 0.9rem;
        }

        .form-container p {
            font-size: 1.2rem;
            color: #555;
            text-align: center;
        }
    </style>
    <script>
        function validateUser() {
            var userName = document.getElementById("un").value;
            var crushName = document.getElementById("cn").value;
            if (userName.length < 2 || crushName.length > 5) {
                alert("Name length must be between 2-5 characters!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="container">
    <div class="form-container">
        <h1>Love Calculation</h1>
        <p class="text-center">Discover the magic of love! Enter your name and your crush's name to see your love compatibility.</p>
        <%--@elvariable id="userInfo" type="com.home"--%>
        <form:form action="/processCalculation" method="post" modelAttribute="userInfo">
            <div class="mb-3">
                <label for="un" class="form-label">Your Name:</label>
                <form:input type="text" id="un" path="userName" class="form-control" placeholder="Enter your name"/>
                <form:errors path="userName" cssClass="error"/>
            </div>
            <div class="mb-3">
                <label for="cn" class="form-label">Your Crush's Name:</label>
                <form:input type="text" id="cn" path="crushName" class="form-control" placeholder="Enter your crush's name"/>
                <form:errors path="crushName" cssClass="error"/>
            </div>
            <div class="form-check mb-3">
                <form:checkbox path="termAndCondition" id="check" class="form-check-input"/>
                <label for="check" class="form-check-label">I agree to use this app</label>
                <form:errors path="termAndCondition" cssClass="error"/>
            </div>
            <button type="submit" class="btn btn-custom w-100">Calculate Love</button>
        </form:form>
        <div class="footer">
            <p>Powered by the Love Calculator App ❤️</p>
        </div>
    </div>
</div>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
