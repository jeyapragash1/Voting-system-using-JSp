<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Online Voting System</title>
    <style>
        /* Include the styles from your previous code */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            box-sizing: border-box;
            background-color: #f4f4f4;
        }

        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #1a1a2e;
            color: white;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1em 1.5em;
        }

        .logo {
            font-size: 1.5em;
            font-weight: bold;
            color: #e94560;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 1em;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            display: inline;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #e94560;
        }

        .hero {
            margin-top: 20px; /* To account for the fixed header */
            background: linear-gradient(rgba(26, 26, 46, 0.8), rgba(26, 26, 46, 0.8)), url('images/3.jpeg') no-repeat center center/cover;
            height: 50vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 3em;
            margin-bottom: 1em;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        .contact-section {
            padding: 3em 2em;
            background-color: #fff;
            color: #333;
            text-align: center;
        }

        .contact-section h2 {
            font-size: 2.5em;
            color: #1a1a2e;
            margin-bottom: 1em;
        }

        .contact-section p {
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 1em;
        }

        .contact-form {
            max-width: 800px;
            margin: 0 auto;
            padding: 1.5em;
            background-color: #f7f7f7;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 1em;
            margin-bottom: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .contact-form button {
            background-color: #e94560;
            color: white;
            border: none;
            padding: 1em 2em;
            font-size: 1.2em;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #1a1a2e;
        }

        .contact-info {
            margin-top: 3em;
        }

        .contact-info h3 {
            font-size: 2em;
            color: #1a1a2e;
            margin-bottom: 1em;
        }

        .contact-info p {
            font-size: 1.2em;
            margin-bottom: 1em;
        }

        .footer {
            background-color: #1a1a2e;
            color: white;
            text-align: center;
            padding: 1em 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .confirmation-message {
            display: none;
            padding: 20px;
            background-color: #4caf50;
            color: white;
            margin-top: 20px;
            border-radius: 5px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5em;
            }

            .contact-section h2 {
                font-size: 1.8em;
            }

            .contact-section p {
                font-size: 1.1em;
            }
        }
    </style>
</head>
<body>

<header>
    <nav class="navbar">
        <div class="logo">Online Voting System</div>
          <ul class="nav-links">
                 <li><a href="index.jsp">Home</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="Features.jsp">Features</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="./UsrRe/login.jsp">Login</a></li>
        </ul>
    </nav>
</header>

<!-- Hero Section -->
<section class="hero">
    <h1>Contact Us</h1>
</section>

<!-- Contact Section -->
<section id="contact" class="contact-section">
    <h2>Inquiry Form</h2>

    <p>If you have any questions, suggestions, or need assistance with the Online Voting System, please feel free to contact us. Our team is ready to assist you!</p>

    <div class="contact-form">
        <h3>Contact Form</h3>
        <form id="contactForm" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Submit</button>
        </form>
        <div class="confirmation-message" id="confirmationMessage">
            <p>We will inform you soon and provide a solution. Thank you for reaching out!</p>
        </div>
    </div>

    <div class="contact-info">
        <h3>Our Contact Information</h3>
        <p><strong>Email:</strong> support@onlinevotingsystem.lk</p>
        <p><strong>Phone:</strong> +94 11 123 4567</p>
        <p><strong>Office Address:</strong> 123, Galle Road, Colombo 03, Sri Lanka</p>
        <p><strong>Social Media:</strong></p>
        <p>Follow us on Facebook, Twitter, and Instagram to stay updated on the latest developments and news.</p>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <p>&copy; 2025 Online Voting System. All Rights Reserved.</p>
</footer>

<script>
    const form = document.getElementById('contactForm');
    const confirmationMessage = document.getElementById('confirmationMessage');

    form.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent form from submitting and reloading the page
        
        // Simulate form submission and show confirmation message
        confirmationMessage.style.display = 'block'; // Show the confirmation message
        
        // Optionally, reset the form after submission
        form.reset();
    });
</script>

</body>
</html>
