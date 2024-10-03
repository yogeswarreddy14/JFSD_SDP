<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e3f2fd; /* Light blue background */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .dashboard-container {
            display: flex;
            width: 90%;
            max-width: 1000px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            overflow: hidden;
        }

        .navbar {
            background-color: #1e88e5; /* Blue theme for navbar */
            color: white;
            padding: 40px 20px;
            width: 300px; /* Fixed width for the navbar */
            text-align: center;
        }

        .navbar h2 {
            font-size: 28px;
            margin-bottom: 40px;
            letter-spacing: 1px;
        }

        .navbar ul {
            list-style-type: none; /* Remove bullet points */
        }

        .navbar li {
            margin-bottom: 25px; /* Spacing between links */
        }

        .navbar a {
            color: white; /* White text color */
            text-decoration: none;
            font-size: 18px;
            background-color: #1976d2; /* Slightly darker blue buttons */
            padding: 15px;
            border-radius: 8px;
            display: block;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #1565c0; /* Darker blue on hover */
            transform: translateY(-3px); /* Slight lift effect */
        }

        .dashboard-content {
            flex: 1;
            padding: 40px;
            background-color: white;
            border-radius: 0 15px 15px 0;
            box-shadow: inset 0 0 15px rgba(0, 0, 0, 0.05);
        }

        .dashboard-content h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #1e88e5;
        }

        .dashboard-content p {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
        }

        @media (max-width: 768px) {
            .dashboard-container {
                flex-direction: column; /* Stack navbar and content on mobile */
                width: 95%;
            }

            .navbar {
                width: 100%; /* Full width for navbar on mobile */
                padding: 30px 20px;
            }

            .dashboard-content {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Admin Dashboard</h2>
            <ul>
                <li><a href="addAssignment.jsp">Add Assignment</a></li>
                <li><a href="addDeadline.jsp">Add Deadline</a></li>
                <li><a href="addPendingStudents.jsp">Add Pending Students</a></li> <!-- New option for adding pending students -->
                <li><a href="logout.jsp">Logout</a></li> <!-- Link to logout -->
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Admin!</h3>
            <p>Use the navigation menu to manage assignments, deadlines, and pending students. You can also log out anytime using the menu options.</p>
        </div>
    </div>
</body>
</html>
