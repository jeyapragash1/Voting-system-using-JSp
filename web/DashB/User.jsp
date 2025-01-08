<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Online Voting System</title>
    <style>
        /* Resetting styles */
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
            padding-top: 70px; /* Add space for fixed header */
        }

        header {
            background-color: #283593; /* Dark Blue */
            color: white;
            padding: 1.5em 2em;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed; /* Fix header at top */
            top: 0;
            left: 0;
            width: 100%; /* Ensure full width */
            z-index: 100; /* Keep it on top */
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
            background-color: #283593; /* Dark Blue */
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
            background-color: #1a237e; /* Darker Blue */
        }

        footer {
            background-color: #283593;
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
        <h1>Online Voting System</h1>
        <nav>
            <a href="#profile">Profile</a>
            <a href="#elections">Elections</a>
            <a href="#history">History</a>
            <a href="#notifications">Notifications</a>
            <a href="#logout">Logout</a>
        </nav>
    </header>

    <!-- Main Content -->
    <main>
        <!-- User Profile Card -->
        <div class="card" id="profile">
            <h2>User Profile</h2>
            <p><strong>Name:</strong> John Doe</p>
            <p><strong>Email:</strong> johndoe@example.com</p>
            <p><strong>Voter ID:</strong> V12345678</p>
            <button onclick="alert('Profile editing feature coming soon!')">Edit Profile</button>
        </div>

        <!-- User Stats Card -->
        <div class="card" id="user-stats">
            <h2>Your Stats</h2>
            <p><strong>Total Votes Cast:</strong> 2</p>
            <p><strong>Registered for Upcoming Elections:</strong> Yes</p>
            <p><strong>Participation Status:</strong> Active</p>
            <button onclick="alert('Viewing voting stats!')">View Detailed Stats</button>
        </div>

        <!-- Ongoing Elections Card -->
        <div class="card" id="elections">
            <h2>Ongoing Elections</h2>
            <p>Participate in the elections happening now:</p>
            <ul>
                <li>Presidential Election 2025</li>
                <li>State Assembly Election 2025</li>
            </ul>
            <button onclick="alert('Redirecting to voting page...')">Vote Now</button>
        </div>

        <!-- Notifications Card -->
        <div class="card" id="notifications">
            <h2>Notifications</h2>
            <ul>
                <li><strong>Reminder:</strong> The Presidential Election starts in 5 days!</li>
                <li><strong>Alert:</strong> Your vote in the State Assembly Election is due soon!</li>
            </ul>
            <button onclick="alert('Viewing all notifications!')">View All Notifications</button>
        </div>

        <!-- Recent Activity Card -->
        <div class="card" id="activity">
            <h2>Recent Activity</h2>
            <ul>
                <li>Voted in Presidential Election 2020</li>
                <li>Voted in State Assembly Election 2022</li>
            </ul>
            <button onclick="alert('Viewing recent activity!')">View All Activity</button>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Online Voting System. All rights reserved. <a href="#">Privacy Policy</a></p>
    </footer>

</body>
</html>
