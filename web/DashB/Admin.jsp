<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Online Voting System</title>
    <style>
        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7fa; /* Light gray background */
            color: #333;
            display: flex;
            flex-direction: column;
            height: 100vh;
            font-size: 16px;
            padding-top: 80px; /* Space for the fixed header */
        }

        header {
            background-color: #1a237e; /* Dark Blue */
            color: white;
            padding: 1.5em 2em;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000; /* Keep header on top of other content */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 1.8em;
        }

        header nav a {
            color: white;
            text-decoration: none;
            margin-left: 1.5em;
            font-size: 1.1em;
            transition: color 0.3s ease;
        }

        header nav a:hover {
            color: #90caf9; /* Light blue */
        }

        main {
            padding: 2em;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2em;
            margin-top: 2em;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            padding: 2em;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.2);
        }

        .card h2 {
            font-size: 1.4em;
            margin-bottom: 1.2em;
            color: #333;
        }

        .card p {
            font-size: 1em;
            color: #555;
        }

        .card button {
            background-color: #1a237e; /* Dark Blue */
            color: white;
            border: none;
            padding: 0.9em;
            font-size: 1.1em;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .card button:hover {
            background-color: #0d47a1; /* Darker Blue */
        }

        footer {
            background-color: #1a237e;
            color: white;
            padding: 1.2em;
            text-align: center;
            margin-top: auto;
        }

        footer a {
            color: #90caf9; /* Light blue */
            text-decoration: none;
            font-weight: bold;
        }

        footer a:hover {
            color: #e1f5fe; /* Very light blue */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header {
                flex-direction: column;
                text-align: center;
            }

            header nav {
                margin-top: 1em;
            }

            header nav a {
                margin: 0.5em 0;
            }

            main {
                padding: 1.5em;
            }

            .card {
                padding: 1.5em;
            }
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Admin Dashboard</h1>
        <nav>
            <a href="#overview">Overview</a>
            <a href="#users">Manage Users</a>
            <a href="#elections">Manage Elections</a>
            <a href="#notifications">Notifications</a>
            <a href="#logout">Logout</a>
        </nav>
    </header>

    <!-- Main Content -->
    <main>
        <!-- Admin Overview Card -->
        <div class="card" id="overview">
            <h2>System Overview</h2>
            <p><strong>Total Registered Users:</strong> 1,240</p>
            <p><strong>Ongoing Elections:</strong> 3</p>
            <p><strong>Total Votes Cast:</strong> 12,340</p>
            <button onclick="alert('Viewing detailed system stats!')">View Detailed Stats</button>
        </div>

        <!-- Manage Users Card -->
        <div class="card" id="users">
            <h2>Manage Users</h2>
            <p>View and manage registered users.</p>
            <button onclick="alert('Redirecting to users management page...')">View Users</button>
        </div>

        <!-- Manage Elections Card -->
        <div class="card" id="elections">
            <h2>Manage Elections</h2>
            <p>View and manage current and upcoming elections.</p>
            <button onclick="alert('Redirecting to elections management page...')">View Elections</button>
        </div>

        <!-- Notifications Card -->
        <div class="card" id="notifications">
            <h2>Send Notifications</h2>
            <p>Send alerts and reminders to users.</p>
            <button onclick="alert('Redirecting to notifications page...')">Send Notification</button>
        </div>

        <!-- Recent Activity Card -->
        <div class="card" id="activity">
            <h2>Recent Activity</h2>
            <ul>
                <li>Created a new election for 2025 Presidential Election.</li>
                <li>Approved new user registration (ID: 1024).</li>
                <li>Sent election reminder to all users.</li>
            </ul>
            <button onclick="alert('Viewing all admin activity!')">View All Activity</button>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Online Voting System. All rights reserved. <a href="#">Privacy Policy</a></p>
    </footer>

</body>
</html>
