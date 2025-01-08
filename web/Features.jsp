<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Features - Online Voting System</title>
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
            background: linear-gradient(rgba(26, 26, 46, 0.8), rgba(26, 26, 46, 0.8)), url('images/11.jpeg') no-repeat center center/cover;
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

        .features-section {
            padding: 3em 2em;
            background-color: #fff;
            color: #333;
            text-align: center;
        }

        .features-section h2 {
            font-size: 2.5em;
            color: #1a1a2e;
            margin-bottom: 1em;
        }

        .features-section p {
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 1em;
        }

        .features-section ul {
            text-align: left;
            margin: 0 auto;
            max-width: 800px;
            list-style: none;
            padding: 0;
        }

        .features-section ul li {
            margin-bottom: 1.5em;
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

            .features-section h2 {
                font-size: 1.8em;
            }

            .features-section p {
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
    <h1>Features of the Online Voting System</h1>
</section>

<!-- Features Section -->
<section id="features" class="features-section">
    <h2>Key Features of the Online Voting System</h2>
    <p>The Online Voting System (OVS) has been designed to address several challenges that have traditionally plagued the election process in Sri Lanka. It introduces innovative features to make voting more efficient, secure, and accessible. Here are the key features that make this system a game-changer for Sri Lankan elections:</p>

    <ul>
        <li><strong>Secure and Transparent Voting:</strong> OVS uses state-of-the-art encryption and blockchain technology to ensure that every vote is securely cast and counted. This eliminates the risks of vote manipulation and ensures transparency in the election process.</li>
        
        <li><strong>Voter Authentication:</strong> To prevent voter fraud, the system requires multi-factor authentication (MFA). Voters must verify their identity using national ID cards, biometric verification, or a one-time password (OTP) sent to their registered mobile number or email.</li>

        <li><strong>Accessibility for All:</strong> The system is designed with a user-friendly interface, making it easy for people of all ages and backgrounds to vote online. It is also mobile-friendly, enabling users to cast their votes via smartphones, even from rural areas where physical polling stations may be far away.</li>

        <li><strong>Real-Time Voting Results:</strong> As soon as voting ends, the system processes the results and displays them in real-time, allowing for immediate access to the outcome. This ensures quicker results and greater public trust in the election process.</li>

        <li><strong>Digital Ballot Boxes:</strong> The system features digital ballot boxes, which store votes securely until the voting process is completed. The use of digital ballot boxes eliminates the need for physical storage and transportation, reducing the risk of lost or tampered votes.</li>

        <li><strong>Voting From Anywhere:</strong> Voters can cast their votes from any location within Sri Lanka, as long as they have internet access. This removes the geographical limitations and allows people from remote areas to participate in national and local elections.</li>

        <li><strong>Vote Verification:</strong> After submitting their votes, users receive a confirmation with a unique transaction ID. This allows voters to verify that their vote has been received and counted accurately, providing additional peace of mind.</li>

        <li><strong>Poll Monitoring and Audit Trail:</strong> Election officials can monitor voting patterns and ensure the integrity of the election process. An audit trail is maintained to track every vote, ensuring complete accountability and transparency.</li>

        <li><strong>Inclusive for All Citizens:</strong> The system ensures that people with disabilities, including the visually impaired, can participate fully in elections through specialized accessibility features such as screen readers and voice command options.</li>

        <li><strong>Cost-Effective and Eco-Friendly:</strong> By eliminating the need for paper ballots, transportation of materials, and setting up physical voting booths, the system saves significant costs and is environmentally friendly, contributing to Sri Lanka's sustainability efforts.</li>
    </ul>
</section>

<!-- Footer -->
<footer class="footer">
    <p>&copy; 2025 Online Voting System. All Rights Reserved.</p>
</footer>

</body>
</html>
