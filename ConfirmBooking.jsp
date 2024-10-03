<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        p {
            font-size: 18px;
            margin: 15px 0;
        }
        .confirm-btn {
            display: inline-block;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            margin-top: 20px;
            display: block;
        }
        .confirm-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Booking Confirmed!</h1>

    <p><strong>Homestay Name:</strong> <%= request.getParameter("homestayName") %></p>
    <p><strong>Check-in Date:</strong> <%= request.getParameter("checkin") %></p>
    <p><strong>Check-out Date:</strong> <%= request.getParameter("checkout") %></p>

    <p>Thank you for booking with us! We look forward to hosting you.</p>

    <a href="index.jsp" class="confirm-btn">Back to Home</a>
</div>

</body>
</html>
