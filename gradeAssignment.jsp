<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Assignment</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #263238; /* Dark background */
            color: #ffffff; /* White text for contrast */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #546e7a; /* Slate blue-grey header */
            color: white;
            text-align: center;
            padding: 25px;
            font-size: 26px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            flex-direction: column;
        }

        form {
            background-color: #37474f; /* Dark grey-blue form */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5); /* Stronger shadow for depth */
            width: 400px;
            text-align: center;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #90a4ae; /* Lighter grey-blue border */
            border-radius: 8px;
            background-color: #546e7a; /* Match form's background */
            color: white;
            font-size: 16px;
        }

        input::placeholder {
            color: #b0bec5; /* Placeholder text color */
        }

        button {
            width: 100%;
            background-color: #ffb300; /* Bright yellow-orange button */
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ffa000; /* Slightly darker yellow-orange on hover */
        }

        .dashboard-button {
            background-color: #42a5f5; /* Cool light blue button */
            margin-top: 20px;
        }

        .dashboard-button:hover {
            background-color: #1e88e5; /* Darker blue on hover */
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #e0e0e0; /* Softer white label */
            font-size: 16px;
        }

        a {
            text-decoration: none; /* Remove underline */
        }
    </style>
</head>
<body>

    <header>
        <h1>Grade Assignment</h1>
    </header>

    <main>
        <form action="submitGrade.jsp" method="POST">
            <label for="student">Select Student</label>
            <select name="student" id="student" required>
                <option value="">Choose a student</option>
                <option value="student_id_1">Student ID 1</option>
                <option value="student_id_2">Student ID 2</option>
                <option value="student_id_3">Student ID 3</option>
                <!-- Add more students dynamically based on your database -->
            </select>

            <label for="assignment">Select Assignment</label>
            <select name="assignment" id="assignment" required>
                <option value="">Choose an assignment</option>
                <option value="assignment1">Assignment 1</option>
                <option value="assignment2">Assignment 2</option>
                <option value="assignment3">Assignment 3</option>
                <!-- Add more assignments dynamically based on your database -->
            </select>

            <label for="grade">Enter Grade</label>
            <input type="text" name="grade" id="grade" placeholder="Grade (e.g. A, B, 85%)" required>

            <button type="submit">Submit Grade</button>
        </form>

        <a href="teacher.jsp">
            <button class="dashboard-button">Go to Dashboard</button>
        </a>
    </main>

</body>
</html>
