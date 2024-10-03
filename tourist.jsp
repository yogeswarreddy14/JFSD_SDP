<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourist Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="dashboard-container">
        <nav class="navbar">
            <h2>Tourist Dashboard</h2>
            <ul>
                <li><a href="homestays.html">Homestays</a></li>
                <li><a href="booking.jsp">Booking history</a></li>
                <li><a href="exploreAttractions.html">Explore Attractions</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
        <div class="dashboard-content">
            <h3>Welcome, Tourist!</h3>
            <p>Search for homestays, view your bookings, and explore attractions here.</p>
            
            <!-- Removed the booking form from the front page -->
            <h2>Explore Homestays and Attractions!</h2>
            <p>Use the navigation links to manage your bookings and explore more.</p>
        </div>
    </div>
    
    <footer>
        <p>&copy; 2024 Travel Homestays</p>
    </footer>
</body>
</html>
