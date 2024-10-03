<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Submission Result</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3e5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .success {
            color: #4CAF50; /* Success color */
        }

        .error {
            color: #f44336; /* Error color */
        }
    </style>
</head>
<body>

<%
    String student = request.getParameter("student");
    String assignment = request.getParameter("assignment");
    String grade = request.getParameter("grade");

    // Here, you would typically add code to save the grade to the database.
    // Assuming the operation is successful, we display a success message.

    // Simulate saving grade to database (replace with actual database code)
    boolean isSaved = true; // This should be the result of your database operation.

    if (isSaved) {
%>
        <div class="message success">
            <h2>Grade Successfully Submitted!</h2>
            <p>Student ID: <strong><%= student %></strong></p>
            <p>Assignment: <strong><%= assignment %></strong></p>
            <p>Grade: <strong><%= grade %></strong></p>
            <a href="gradeAssignment.jsp">Go Back</a>
        </div>
<%
    } else {
%>
        <div class="message error">
            <h2>Error Submitting Grade</h2>
            <p>There was a problem submitting the grade. Please try again.</p>
            <a href="gradeAssignment.jsp">Go Back</a>
        </div>
<%
    }
%>

</body>
</html>
