<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
    // Database connection setup
    String url = "jdbc:mysql://localhost:3306/yourdatabase";
    String user = "root";
    String password = "password";

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // Fetch homestay ID from request parameter
    String homestayId = request.getParameter("id");
    String homestayName = "";

    // Initialize reviews list
    List<Map<String, String>> reviews = new ArrayList<>();

    try {
        // Load database driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection
        conn = DriverManager.getConnection(url, user, password);

        // Query to fetch homestay name
        String homestayQuery = "SELECT name FROM homestays WHERE id = ?";
        ps = conn.prepareStatement(homestayQuery);
        ps.setString(1, homestayId);
        rs = ps.executeQuery();

        // Fetch the homestay name
        if (rs.next()) {
            homestayName = rs.getString("name");
        }

        // Close result set
        rs.close();
        ps.close();

        // Query to fetch reviews for the specific homestay
        String reviewQuery = "SELECT * FROM reviews WHERE homestay_id = ?";
        ps = conn.prepareStatement(reviewQuery);
        ps.setString(1, homestayId);
        rs = ps.executeQuery();

        // Store reviews in a list
        while (rs.next()) {
            Map<String, String> review = new HashMap<>();
            review.put("name", rs.getString("name"));
            review.put("rating", rs.getString("rating"));
            review.put("comment", rs.getString("comment"));
            reviews.add(review);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviews for <%= homestayName %></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .reviews {
            margin: 20px 0;
        }
        .review {
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
        }
        .review h3 {
            margin: 0;
        }
        .review p {
            margin: 5px 0;
        }
        .review .rating {
            color: #ff9800;
        }
        form {
            margin-top: 30px;
        }
        form input, form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        form button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Reviews for <%= homestayName %></h1>

    <div class="reviews">
        <h2>What our guests are saying:</h2>
        <% if (reviews.size() > 0) { %>
            <% for (Map<String, String> review : reviews) { %>
                <div class="review">
                    <h3><%= review.get("name") %></h3>
                    <p class="rating">Rating: <%= review.get("rating") %>/5</p>
                    <p><%= review.get("comment") %></p>
                </div>
            <% } %>
        <% } else { %>
            <p>No reviews yet. Be the first to review <%= homestayName %>!</p>
        <% } %>
    </div>

    <!-- Form to submit a review -->
    <form action="submitReview.jsp" method="POST">
        <h2>Submit Your Review for <%= homestayName %></h2>
        <input type="hidden" name="homestay_id" value="<%= homestayId %>">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="number" name="rating" placeholder="Rating (1-5)" min="1" max="5" required>
        <textarea name="comment" placeholder="Your Review" rows="5" required></textarea>
        <button type="submit">Submit Review</button>
    </form>
</div>

</body>
</html>
