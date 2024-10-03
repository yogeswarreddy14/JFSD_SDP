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
            background-color: #e3f2fd; /* Light blue background */
        }

        .dashboard-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            padding: 20px;
        }

        .navbar {
            background-color: #0d47a1; /* Dark blue navbar background */
            border-radius: 12px; /* Rounded corners for navbar */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15); /* Deeper shadow for emphasis */
            padding: 25px;
            width: 100%;
            max-width: 450px; /* Maximum width for navbar */
            margin-bottom: 30px;
            color: white;
            text-align: center;
        }

        .navbar h2 {
            font-size: 28px; /* Larger font size */
            margin-bottom: 20px;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
        }

        .navbar li {
            margin: 15px 0; /* More space between list items */
        }

        .navbar a {
            text-decoration: none;
            color: white;
            background-color: #1e88e5; /* Bright blue buttons */
            padding: 12px 18px; /* More padding for buttons */
            border-radius: 8px;
            font-size: 18px; /* Larger font size for better readability */
            transition: background-color 0.3s ease;
            display: inline-block;
            width: 100%;
        }

        .navbar a:hover {
            background-color: #1565c0; /* Darker shade of blue on hover */
        }

        .dashboard-content {
            text-align: center;
            color: #0d47a1; /* Dark blue text */
        }

        .dashboard-content h3 {
            font-size: 24px;
            margin-bottom: 15px;
        }

        .dashboard-content p {
            font-size: 18px;
        }

        .dashboard-content img {
            margin-top: 20px;
            width: 150px; /* Size of the image */
            border-radius: 50%; /* Circular profile image */
            border: 4px solid #0d47a1; /* Blue border around image */
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Student Dashboard</h2>
            <ul>
                <li><a href="viewAssignmentStatus.jsp">View Assignment Status</a></li>
                <li><a href="viewGrades.jsp">View Grades</a></li>
                <li><a href="submitAssignment.jsp">Submit Assignment</a></li> <!-- New Submit Assignment Option -->
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Student!</h3>
            <p>Access your assignment statuses, grades, and submit assignments from the menu.</p>
        </div>
    </div>
</body>
</html>
