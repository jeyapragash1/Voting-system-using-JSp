<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Online Voting System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f4f7; /* Light gray background color for the entire page */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #ffffff; /* White background for the login form */
            border-radius: 8px;
            padding: 2em;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 1.5em;
            color: #333;
        }

        .input-field {
            width: 100%;
            padding: 0.75em;
            margin-bottom: 1.5em;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1em;
        }

        .login-btn {
            width: 100%;
            padding: 0.75em;
            background-color: #1a1a2e; /* Dark color for the button */
            color: white;
            font-size: 1.2em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-btn:hover {
            background-color: #e94560; /* Hover effect for the button */
        }

        .link {
            text-align: center;
            display: block;
            margin-top: 1em;
            color: #1a1a2e;
            font-size: 0.9em;
        }

        .link:hover {
            color: #e94560;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 1em;
        }

        .info-message {
            color: #555;
            text-align: center;
            margin-top: 2em;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login to Vote</h2>

        <!-- Error message for incorrect login -->
        <div class="error-message">
            <%-- If there is any login error, show the message --%>
            <c:if test="${not empty errorMessage}">
                ${errorMessage}
            </c:if>
        </div>

        <!-- Login Form -->
        <form action="login.jsp" method="post">
            <input type="text" class="input-field" name="username" placeholder="Enter Your NIC/Username" required>
            <input type="password" class="input-field" name="password" placeholder="Enter Your Password" required>
            <button type="submit" class="login-btn">Login</button>
        </form>

        <!-- Forgot Password and Register links -->
        <a href="forgotPassword.jsp" class="link">Forgot Password?</a>
        <a href="register.jsp" class="link">Don't have an account? Register Here</a>

        <div class="info-message">
            <p>Voting is your right as a citizen of Sri Lanka. Please make sure to vote in the upcoming elections.</p>
            <p>For any assistance, contact the election commission.</p>
        </div>
    </div>
</body>
</html>
