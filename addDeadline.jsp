<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Deadline</title>
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
            align-items: flex-start;
            padding-top: 50px; /* Adds spacing at the top */
        }

        .container {
            background-color: white; /* White form background */
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2); /* Slight shadow for depth */
            padding: 40px 30px;
            width: 100%;
            max-width: 450px; /* Fixed width for form */
        }

        h2 {
            text-align: left;
            margin-bottom: 20px;
            color: #1976d2; /* Blue color for header */
            font-size: 28px;
        }

        label {
            margin-bottom: 8px;
            font-size: 16px;
            color: #555; /* Standard label color */
            display: block;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="time"]:focus {
            border-color: #1976d2; /* Blue border on focus */
            outline: none;
            box-shadow: 0 0 5px rgba(25, 118, 210, 0.5); /* Soft blue glow */
        }

        button {
            background-color: #1976d2; /* Blue button */
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #1565c0; /* Darker blue on hover */
            transform: translateY(-2px); /* Subtle hover effect */
        }

        .message {
            color: green;
            text-align: center;
            margin-top: 10px;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        /* Back to Admin Dashboard Link */
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #1976d2; /* Blue link color */
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Assignment Deadline</h2>
        <form action="saveDeadline.jsp" method="post">
            <label for="assignmentId">Assignment ID:</label>
            <input type="text" id="assignmentId" name="assignmentId" required placeholder="Enter Assignment ID">

            <label for="deadline">Deadline:</label>
            <input type="date" id="deadline" name="deadline" required>

            <label for="time">Time (Optional):</label>
            <input type="time" id="time" name="time" placeholder="Optional">

            <button type="submit">Set Deadline</button>
        </form>

        <!-- Display success or error messages -->
        <% if (request.getParameter("message") != null) { %>
            <div class="message"><%= request.getParameter("message") %></div>
        <% } %>
        <% if (request.getParameter("error") != null) { %>
            <div class="error"><%= request.getParameter("error") %></div>
        <% } %>

        <!-- Back to Admin Dashboard Link -->
        <a href="admin.jsp">Back to Admin Dashboard</a>
    </div>
</body>
</html>
