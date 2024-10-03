<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assignment Status</title>
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
            align-items: center;
            justify-content: flex-start; /* Align items to the top */
            height: 100%; 
            padding: 20px; 
        }

        h2 {
            color: #0d47a1; /* Dark blue for title */
            margin-bottom: 20px; 
        }

        .table-container {
            width: 100%; 
            max-width: 600px; 
            background-color: white; /* White background for the table */
            border-radius: 10px; 
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); 
            overflow: hidden; /* Round corners */
            margin-bottom: 20px; /* Spacing below the table container */
        }

        table {
            width: 100%; 
            border-collapse: collapse; 
        }

        th, td {
            padding: 15px; 
            text-align: left; 
            color: #555; 
        }

        th {
            background-color: #0d47a1; /* Dark blue background for header */
            color: white; 
        }

        tr:nth-child(even) {
            background-color: #e1f5fe; /* Light blue background for even rows */
        }

        tr:hover {
            background-color: #bbdefb; /* Light blue hover effect */
        }

        .button-container {
            margin-top: 20px; /* Space above buttons */
        }

        a {
            text-decoration: none; 
            color: white; 
            background-color: #2196f3; /* Bright blue for button background */
            padding: 12px 20px; 
            border-radius: 5px; 
            transition: background-color 0.3s ease; 
        }

        a:hover {
            background-color: #1976d2; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h2>Assignment Status</h2>
        <div class="table-container">
            <table>
                <tr>
                    <th>Assignment Title</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td>Assignment 1</td>
                    <td>Completed</td>
                </tr>
                <tr>
                    <td>Assignment 2</td>
                    <td>Pending</td>
                </tr>
                <tr>
                    <td>Assignment 3</td>
                    <td>In Progress</td>
                </tr>
                <tr>
                    <td>Assignment 4</td>
                    <td>Completed</td>
                </tr>
            </table>
        </div>
        <div class="button-container">
            <a href="student.jsp">Back to Dashboard</a> <!-- Link back to the dashboard -->
        </div>
    </div>
</body>
</html>
