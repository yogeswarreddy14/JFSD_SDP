<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pending Students</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e3f2fd; /* Light blue background */
            margin: 0;
            padding: 20px;
        }

        header h1 {
            color: #0d47a1; /* Dark blue text for the header */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #ffffff; /* White table background */
            border-radius: 10px; /* Rounded corners for table */
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        th, td {
            border: 1px solid #90caf9; /* Light blue border */
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #1976d2; /* Primary blue header color */
            color: white;
        }

        tr:hover {
            background-color: #bbdefb; /* Light blue hover effect */
        }

        .back-button {
            background-color: #1e88e5; /* Blue button color */
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 8px;
            margin-bottom: 20px;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #1565c0; /* Darker blue on hover */
        }
    </style>
</head>
<body>

    <header>
        <h1>Pending Students</h1>
    </header>

    <main>
        <a href="teacher.jsp" class="back-button">Back to Dashboard</a> <!-- Link to Teacher Dashboard -->
        
        <table>
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>STU001</td>
                    <td>Student 1</td>
                    <td>Pending</td>
                </tr>
                <tr>
                    <td>STU002</td>
                    <td>Student 2</td>
                    <td>Pending</td>
                </tr>
                
            </tbody>
        </table>
    </main>

</body>
</html>
