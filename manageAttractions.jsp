<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    // Simulated attractions for demonstration purposes
    List<Map<String, String>> attractions = new ArrayList<>();

    // Simulate some attractions (this would normally come from your database)
    if (attractions.isEmpty()) {
        Map<String, String> attraction1 = new HashMap<>();
        attraction1.put("name", "Eiffel Tower");
        attraction1.put("location", "Paris, France");
        attraction1.put("image", "images/eiffel_tower.jpg"); // Update the image path
        attractions.add(attraction1);

        Map<String, String> attraction2 = new HashMap<>();
        attraction2.put("name", "Statue of Liberty");
        attraction2.put("location", "New York, USA");
        attraction2.put("image", "images/statue_of_liberty.jpg"); // Update the image path
        attractions.add(attraction2);
    }

    // Handle form submission for adding an attraction
    String message = "";
    String attractionName = request.getParameter("attractionName");
    String attractionLocation = request.getParameter("attractionLocation");
    String imagePath = request.getParameter("image");

    if (attractionName != null && attractionLocation != null && imagePath != null) {
        // Add new attraction
        Map<String, String> newAttraction = new HashMap<>();
        newAttraction.put("name", attractionName);
        newAttraction.put("location", attractionLocation);
        newAttraction.put("image", imagePath);
        attractions.add(newAttraction);
        message = "Attraction added successfully!";
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Attractions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f8f9fa;
        }
        h1 {
            color: #343a40;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #e9ecef;
        }
        button {
            padding: 5px 10px;
            margin: 5px;
            cursor: pointer;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
        }
        button:hover {
            background-color: #0056b3;
        }
        .message {
            color: green;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Manage Attractions</h1>

    <% if (!message.isEmpty()) { %>
        <p class="message"><%= message %></p>
    <% } %>

    <h2>Add New Attraction</h2>
    <form method="post" action="">
        <label for="attractionName">Attraction Name:</label>
        <input type="text" id="attractionName" name="attractionName" required><br><br>

        <label for="attractionLocation">Location:</label>
        <input type="text" id="attractionLocation" name="attractionLocation" required><br><br>

        <label for="image">Upload Image:</label>
        <input type="text" id="image" name="image" required placeholder="Enter image path"><br><br>

        <button type="submit">Add Attraction</button>
    </form>

    <h2>Existing Attractions</h2>
    <table>
        <thead>
            <tr>
                <th>Attraction Name</th>
                <th>Location</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <% 
                for (Map<String, String> attraction : attractions) { 
            %>
                <tr>
                    <td><%= attraction.get("name") %></td>
                    <td><%= attraction.get("location") %></td>
                    <td><img src="<%= attraction.get("image") %>" alt="<%= attraction.get("name") %>" width="100"></td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <footer>
        <p>&copy; 2024 Travel Attractions</p>
    </footer>
</body>
</html>

