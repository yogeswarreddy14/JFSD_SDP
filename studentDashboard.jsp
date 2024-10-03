<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3e5f5; /* Consistent background color */
        }

        .dashboard-container {
            display: flex; /* Flexbox for layout */
            flex-direction: column; /* Stack items vertically */
            align-items: center; /* Center items horizontally */
            justify-content: center; /* Center items vertically */
            height: 100%; /* Full height */
            padding: 20px; /* Add padding around the container */
        }

        .navbar {
            background-color: white; /* White background for the navbar */
            border-radius: 10px; /* Rounded corners for navbar */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow for navbar */
            padding: 20px;
            width: 100%; /* Full width for the navbar */
            max-width: 400px; /* Maximum width for larger screens */
            margin-bottom: 20px; /* Spacing below navbar */
        }

        .navbar h2 {
            text-align: center;
            color: #673ab7; /* Purple color for title */
            margin-bottom: 15px;
        }

        .navbar ul {
            list-style-type: none; /* Remove default list styling */
            padding: 0; /* Remove padding */
        }

        .navbar li {
            margin: 10px 0; /* Spacing between items */
        }

        .navbar a {
            text-decoration: none; /* Remove underline from links */
            color: white; /* White text color for buttons */
            font-size: 16px;
            display: inline-block; /* Inline-block for button appearance */
            padding: 10px 15px; /* Add padding for button */
            border-radius: 5px; /* Rounded corners for buttons */
            background-color: #009688; /* Teal color for button background */
            transition: background-color 0.3s ease; /* Smooth transition for background */
        }

        .navbar a:hover {
            background-color: #00796b; /* Darker shade on hover */
        }

        .dashboard-content {
            text-align: center; /* Center align text */
            color: #555; /* Dark gray color for text */
        }

        .dashboard-content h3 {
            color: #673ab7; /* Purple color for welcome message */
            margin-bottom: 10px;
        }

        .dashboard-content p {
            font-size: 16px; /* Increase font size for better readability */
            margin-top: 10px; /* Add space above paragraph */
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Student Dashboard</h2>
            <ul>
                <li><a href="viewAssignmentStatus.jsp">View Assignment Status</a></li> <!-- Redirects to view assignment status -->
                <li><a href="viewGrades.jsp">View Grades</a></li> <!-- Redirects to view grades -->
                <li><a href="logout.jsp">Logout</a></li> <!-- Redirects to logout -->
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Student!</h3>
            <p>Use the menu to view your assignments and grades.</p>
        </div>
    </div>
</body>
</html>
