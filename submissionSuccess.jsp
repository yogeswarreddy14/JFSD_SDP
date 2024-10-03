<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submission Successful</title>
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

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            padding: 20px;
        }

        h2 {
            color: #0d47a1; /* Dark blue color for title */
            margin-bottom: 20px;
        }

        p {
            color: #0d47a1; /* Dark blue color for message */
            margin-bottom: 20px;
        }

        button {
            background-color: #0d47a1; /* Dark blue button */
            color: white; /* White text color */
            border: none; /* No border */
            padding: 10px 15px; /* Padding for button */
            border-radius: 5px; /* Rounded corners for button */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth transition */
        }

        button:hover {
            background-color: #1565c0; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Submission Successful!</h2>
        <p>Your assignment has been successfully submitted.</p>
        <form action="student.jsp" method="get">
            <button type="submit">Back to Dashboard</button>
        </form>
    </div>
</body>
</html>
