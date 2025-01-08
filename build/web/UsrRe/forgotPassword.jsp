
<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - Online Voting System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f4f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .forgot-password-container {
            background-color: #ffffff;
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

        .input-field:focus {
            border-color: #1a1a2e;
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 0.75em;
            background-color: #1a1a2e;
            color: white;
            font-size: 1.2em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #e94560;
        }

        .link {
            text-align: center;
            display: block;
            margin-top: 1em;
            color: #1a1a2e;
            font-size: 0.9em;
            text-decoration: none;
        }

        .link:hover {
            color: #e94560;
            text-decoration: underline;
        }

        .info-message {
            text-align: center;
            color: #555;
            margin-top: 1.5em;
            font-size: 0.9em;
        }

        .success-message {
            text-align: center;
            color: green;
            font-size: 1em;
            margin-bottom: 1em;
            display: none;
        }
    </style>
</head>
<body>

    <div class="forgot-password-container">
        <h2>Forgot Password?</h2>

        <!-- Success message -->
        <div class="success-message" id="successMessage">
            Check your email account and login.
        </div>

        <!-- Forgot Password Form -->
        <form id="forgotPasswordForm">
            <input type="email" class="input-field" name="email" placeholder="Enter your registered email" required>
            <button type="submit" class="submit-btn">Reset Password</button>
        </form>

        <a href="login.jsp" class="link">Back to Login</a>

        <div class="info-message">
            <p>If you have forgotten your password, please enter your registered email above. We will send you instructions to reset your password.</p>
        </div>
    </div>

    <script>
        // JavaScript to handle form submission
        const form = document.getElementById('forgotPasswordForm');
        const successMessage = document.getElementById('successMessage');

        form.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from reloading the page

            // Display success message
            successMessage.style.display = 'block';

            // Clear input field
            form.reset();
        });
    </script>

</body>
</html>
