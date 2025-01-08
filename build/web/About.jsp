
<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Online Voting System</title>
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
            background: linear-gradient(rgba(26, 26, 46, 0.8), rgba(26, 26, 46, 0.8)), url('images/2.jpeg') no-repeat center center/cover;
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

        .about-section {
            padding: 3em 2em;
            background-color: #fff;
            color: #333;
            text-align: center;
        }

        .about-section h2 {
            font-size: 2em;
            color: #1a1a2e;
            margin-bottom: 1em;
        }

        .about-section p {
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 1em;
        }

        .about-section ul {
            text-align: left;
            margin: 0 auto;
            max-width: 800px;
            list-style: none;
            padding: 0;
        }

        .about-section ul li {
            margin-bottom: 1em;
            font-size: 1.1em;
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

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5em;
            }

            .about-section h2 {
                font-size: 1.8em;
            }

            .about-section p {
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
    <h1>About the Online Voting System</h1>
</section>

<!-- About Section -->
<section id="about" class="about-section">
    <h2>Revolutionizing Elections in Sri Lanka</h2>
    <p>The Online Voting System (OVS) is a groundbreaking platform designed to bring the voting process into the digital age, providing citizens in Sri Lanka with a secure, efficient, and transparent way to cast their votes online. In a country where traditional voting methods are still the norm, OVS seeks to modernize and streamline the election process.</p>

    <h3>Benefits of the Online Voting System:</h3>
    <ul>
        <li><strong>Convenience:</strong> Voters can cast their ballots from the comfort of their homes or anywhere with internet access, eliminating the need to travel to polling stations.</li>
        <li><strong>Security:</strong> With advanced encryption technologies, the system ensures that each vote is securely cast, preventing fraud and tampering.</li>
        <li><strong>Accessibility:</strong> The system is designed to be accessible to all Sri Lankans, including those with disabilities, ensuring equal participation for all citizens.</li>
        <li><strong>Transparency:</strong> Results are calculated and displayed in real-time, allowing for a more transparent election process and reducing the risk of discrepancies.</li>
        <li><strong>Cost-Effective:</strong> By reducing the need for physical infrastructure, paper ballots, and manual labor, the OVS helps save costs associated with traditional elections.</li>
    </ul>

    <h3>The Vision:</h3>
    <p>The vision of the Online Voting System is to empower Sri Lankans by providing them with a modern, reliable, and user-friendly voting experience. By embracing digital technology, Sri Lanka can move towards a more efficient and trustworthy democratic process, where every citizen's voice is heard clearly and securely.</p>
    
    <h3>How it Works:</h3>
    <ul>
        <li>Voters register online and authenticate their identity via a secure verification process.</li>
        <li>Once registered, voters can log in to their accounts on the election day to cast their vote.</li>
        <li>The system ensures that each vote is anonymous and encrypted, ensuring privacy and security.</li>
        <li>Votes are counted immediately and results are available as soon as the voting period ends.</li>
    </ul>
</section>

<!-- Footer -->
<footer class="footer">
    <p>&copy; 2025 Online Voting System. All Rights Reserved.</p>
</footer>

</body>
</html>
