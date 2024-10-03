<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Assignment</title>
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

        form {
            background-color: white; /* White background for form */
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Shadow for depth */
            padding: 30px;
            max-width: 400px; /* Maximum width for form */
            width: 100%; /* Full width for smaller screens */
        }

        label {
            margin-bottom: 10px;
            display: block; /* Block display for label */
            color: #555; /* Dark gray color */
        }

        input[type="file"] {
            margin-bottom: 20px; /* Space below file input */
        }

        button {
            background-color: #0d47a1; /* Dark blue button */
            color: white; /* White text color */
            border: none; /* No border */
            padding: 10px 15px; /* Padding for button */
            border-radius: 5px; /* Rounded corners for button */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth transition */
            width: 100%; /* Full width button */
        }

        button:hover {
            background-color: #1565c0; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Submit Assignment</h2>
        <form action="submissionSuccess.jsp" method="post" enctype="multipart/form-data">
            <label for="assignmentFile">Upload PDF Assignment:</label>
            <input type="file" id="assignmentFile" name="assignmentFile" accept="application/pdf" required>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
