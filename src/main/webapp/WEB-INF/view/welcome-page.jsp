<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe Delight</title>
    <!-- Correct the CSS path -->
    <link href="<c:url value='/resources/css/styles.css'/>" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Cafe Delight</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section text-center text-light">
    <div class="container">
        <h1 class="display-4">Taste the Best Coffee in Town</h1>
        <p class="lead">Experience a cozy ambiance and freshly brewed coffee.</p>
        <a href="#" class="btn btn-light btn-lg">Browse Menu</a>
    </div>
</div>

<!-- About Section -->
<section class="about-section py-5">
    <div class="container text-center">
        <h2 class="display-5">About Our Cafe</h2>
        <p class="lead">Our cafe is a place to unwind, enjoy great coffee, and savor delicious pastries. Located in the heart of the city, we provide a warm and welcoming atmosphere for you to relax or work.</p>
    </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-center text-light py-3">
    <p>&copy; 2024 Cafe Delight | All Rights Reserved</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
