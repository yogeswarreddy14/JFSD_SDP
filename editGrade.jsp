<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Grade</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e3f2fd; /* Light blue background */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #1976d2; /* Primary blue color for the header */
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            flex-direction: column;
        }

        form {
            background-color: rgba(255, 255, 255, 0.95); /* Slightly transparent white */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #90caf9; /* Light blue border */
            border-radius: 8px;
            font-size: 16px;
            background-color: #e3f2fd; /* Light blue input background */
            color: #0d47a1; /* Dark blue input text */
        }

        button {
            width: 100%;
            background-color: #1976d2; /* Primary blue button */
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #1565c0; /* Slightly darker blue on hover */
        }

        .dashboard-button {
            background-color: #0288d1; /* Cyan dashboard button */
            margin-top: 20px;
        }

        .dashboard-button:hover {
            background-color: #0277bd; /* Darker cyan on hover */
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #0d47a1; /* Dark blue label text */
        }

        a {
            text-decoration: none;
        }
    </style>
    <script>
        function fetchCurrentGrade() {
            const studentId = document.getElementById('student').value;
            const assignmentId = document.getElementById('assignment').value;
            // No need to fetch current grade as it's removed
        }
    </script>
</head>
<body>

    <header>
        <h1>Edit Grade</h1>
    </header>

    <main>
        <form action="updateGrade.jsp" method="POST">
            <label for="student">Select Student</label>
            <select name="student" id="student" required onchange="fetchCurrentGrade()">
                <option value="">Choose a student</option>
                <option value="student_id_1">Student ID 1</option>
                <option value="student_id_2">Student ID 2</option>
                <option value="student_id_3">Student ID 3</option>
                <!-- Add more students dynamically based on your database -->
            </select>

            <label for="assignment">Select Assignment</label>
            <select name="assignment" id="assignment" required onchange="fetchCurrentGrade()">
                <option value="">Choose an assignment</option>
                <option value="assignment1">Assignment 1</option>
                <option value="assignment2">Assignment 2</option>
                <option value="assignment3">Assignment 3</option>
                <!-- Add more assignments dynamically based on your database -->
            </select>

            <label for="newGrade">New Grade</label>
            <input type="text" name="newGrade" id="newGrade" placeholder="New Grade (e.g. A, B, 85%)" required>

            <button type="submit">Update Grade</button>
        </form>

        <a href="teacher.jsp">
            <button class="dashboard-button">Go to Dashboard</button>
        </a>
    </main>

</body>
</html>
