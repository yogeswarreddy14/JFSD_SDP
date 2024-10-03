<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Teacher Dashboard</h2>
            <ul>
                <!-- Links to the JSP files for Assignment Grading and Deadline Management -->
                <li><a href="gradeAssignment.jsp">Grade Assignment</a></li>  <!-- Link to Grade Assignment -->
                <li><a href="addAssignment.jsp">Add Assignment</a></li>      <!-- Link to Add Assignment -->
                <li><a href="addDeadline.jsp">Add Deadline</a></li>          <!-- Link to Add Deadline -->
                <li><a href="logout.jsp">Logout</a></li>                      <!-- Link to Logout -->
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Teacher!</h3>
            <p>Use the menu to manage assignments, grade students, and set deadlines.</p>
        </div>
    </div>
</body>
</html>
