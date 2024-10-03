<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Assignment</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Add New Assignment</h2>
        <form action="saveAssignment.jsp" method="post">
            <label for="title">Assignment Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="description">Assignment Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <label for="dueDate">Due Date:</label>
            <input type="date" id="dueDate" name="dueDate" required>

            <button type="submit">Add Assignment</button>
        </form>
    </div>
</body>
</html>
