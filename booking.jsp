<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
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
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="date"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .message {
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Book <%= request.getParameter("name") %></h1>

    <!-- Booking Form -->
    <form action="ConfirmBooking.jsp" method="post" onsubmit="return validateBooking()">
        <label for="checkin">Check-in:</label>
        <input type="date" id="checkin" name="checkin" required>

        <label for="checkout">Check-out:</label>
        <input type="date" id="checkout" name="checkout" required>

        <input type="hidden" name="homestayName" value="<%= request.getParameter("name") %>">
        <input type="hidden" name="homestayId" value="<%= request.getParameter("id") %>">

        <input type="submit" value="Confirm Booking">
    </form>

    <p id="message" class="message"></p>
</div>

<script>
    function validateBooking() {
        var checkin = document.getElementById('checkin').value;
        var checkout = document.getElementById('checkout').value;
        var message = document.getElementById('message');

        if (!checkin || !checkout) {
            message.innerText = 'Please fill in both dates.';
            return false;
        }

        if (new Date(checkout) <= new Date(checkin)) {
            message.innerText = 'Check-out date must be after check-in date.';
            return false;
        }

        return true;
    }
</script>

</body>
</html>
