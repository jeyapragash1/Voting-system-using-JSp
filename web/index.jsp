
<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online Voting System</title>
        <style>
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
            @keyframes fadeInHeader {
                0% { opacity: 0; }
                100% { opacity: 1; }
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
                opacity: 0;
                animation: fadeInLogo 1.5s forwards;
            }
            @keyframes fadeInLogo {
                0% { opacity: 0; }
                100% { opacity: 1; }
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
                opacity: 0;
                animation: fadeInLinks 1.5s forwards;
            }

            @keyframes fadeInLinks {
                0% { opacity: 0; }
                100% { opacity: 1; }
            }

            .nav-links a:hover {
                color: #e94560;
            }

            .hero {
                margin-top: 10px; /* To account for the fixed header */
                background: linear-gradient(rgba(26, 26, 46, 0.8), rgba(26, 26, 46, 0.8)), url('images/2.jpeg') no-repeat center center/cover;
                height: 86vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
                color: white;
                opacity: 0;
                animation: fadeInHero 1.5s forwards;
            }
            @keyframes fadeInHero {
                0% { opacity: 0; }
                100% { opacity: 1; }
            }

            .hero h1 {
                font-size: 2.5em;
                margin-bottom: 1em;
                text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
                opacity: 0;
                animation: slideInText 1.5s forwards;
            }

            @keyframes slideInText {
                0% {
                    opacity: 0;
                    transform: translateY(20px);
                }
                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .hero button {
                margin: 0.5em;
                padding: 0.75em 1.5em;
                font-size: 1em;
                font-weight: bold;
                color: white;
                background: linear-gradient(90deg, #e94560, #ff6b81);
                border: none;
                border-radius: 50px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
                cursor: pointer;
                transition: all 0.3s ease;
                text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
                opacity: 0;
                animation: fadeInButtons 1.5s forwards;
            }
            @keyframes fadeInButtons {
                0% { opacity: 0; }
                100% { opacity: 1; }
            }

            @keyframes fadeInButton {
                0% { opacity: 0; }
                100% { opacity: 1; }
            }
            .hero button:hover {
                background: linear-gradient(90deg, #ff6b81, #e94560);
                transform: scale(1.05);
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
            }

            @media (max-width: 768px) {
                .nav-links {
                    flex-direction: column;
                    background-color: #1a1a2e;
                    position: absolute;
                    top: 70px;
                    right: 0;
                    display: none;
                    width: 100%;
                    text-align: center;
                }

                .nav-links.active {
                    display: flex;
                }

                .hero h1 {
                    font-size: 2em;
                }

                .hero button {
                    font-size: 0.9em;
                    padding: 0.5em 1em;
                }
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

      
<section class="hero">
    <h1>Be a part of decision</h1>
    <div class="hero-buttons">
        <!-- Redirect to the Register page -->
        <button onclick="window.location.href = './UsrRe/register.jsp'">Register</button>
        <!-- Redirect to the Login page -->
        <button onclick="window.location.href = './UsrRe/login.jsp'">Vote Today</button>
    </div>
</section>



        <!-- Footer -->
        <footer class="footer">
            <p>&copy; 2025 Online Voting System. All Rights Reserved.</p>
        </footer>


    </body>
</html>
