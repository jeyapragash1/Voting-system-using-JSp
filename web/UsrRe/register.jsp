<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Online Voting System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-container {
            background-color: #fff;
            width: 420px;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border-radius: 8px;
            border: 2px solid #ddd;
            font-size: 1.1em;
            transition: border 0.3s ease;
        }

        .input-field:focus {
            border-color: #1a1a2e; /* Matching theme color */
            outline: none;
        }

        .register-btn {
            width: 100%;
            padding: 15px;
            background-color: #1a1a2e; /* Dark button background */
            color: white;
            font-size: 1.2em;
            font-weight: 700;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .register-btn:hover {
            background-color: #e94560; /* Hover effect */
            transform: scale(1.05);
        }

        .link {
            color: #1a1a2e; /* Matching link color */
            font-size: 1em;
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
        }

        .link:hover {
            color: #e94560; /* Link hover color */
            text-decoration: underline;
        }

        .info-message {
            font-size: 0.9em;
            color: #555;
            margin-top: 20px;
        }

        .error-message {
            color: red;
            font-size: 1.1em;
            margin-bottom: 15px;
        }

        .input-field[type="password"] {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body>

    <div class="register-container">
        <h2>Create an Account</h2>

        <!-- Display error message if any -->
        <div class="error-message">
            <%-- If there is any registration error, show the message --%>
            <c:if test="${not empty errorMessage}">
                ${errorMessage}
            </c:if>
        </div>

        <!-- Registration Form -->
        <form action="register.jsp" method="post">
            <input type="text" class="input-field" name="fullName" placeholder="Full Name" required>
            <input type="text" class="input-field" name="nic" placeholder="NIC Number" required>
            <input type="email" class="input-field" name="email" placeholder="Email Address" required>
            <input type="text" class="input-field" name="phone" placeholder="Phone Number" required>
            <input type="password" class="input-field" name="password" placeholder="Create Password" required>
            <input type="password" class="input-field" name="confirmPassword" placeholder="Confirm Password" required>
            <button type="submit" class="register-btn">Register</button>
        </form>

        <a href="login.jsp" class="link">Already have an account? Login</a>

        <div class="info-message">
            <p>By registering, you agree to participate in Sri Lanka's democratic process.</p>
        </div>
    </div>

</body>
</html>
