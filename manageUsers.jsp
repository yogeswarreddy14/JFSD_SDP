<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    // Simulated user requests for demonstration purposes
    List<Map<String, String>> userRequests = new ArrayList<>();

    // Simulate some user requests (this would normally come from your database)
    if (userRequests.isEmpty()) {
        Map<String, String> request1 = new HashMap<>();
        request1.put("username", "Alice Johnson");
        request1.put("room", "Deluxe Suite");
        request1.put("requestId", "1");
        userRequests.add(request1);

        Map<String, String> request2 = new HashMap<>();
        request2.put("username", "Bob Smith");
        request2.put("room", "Standard Room");
        request2.put("requestId", "2");
        userRequests.add(request2);
    }

    // Handle form submission for accepting or declining requests
    String message = "";
    String action = request.getParameter("action");
    String requestId = request.getParameter("requestId");
    String username = request.getParameter("username");

    if (action != null && requestId != null) {
        if (action.equals("accept")) {
            message = "Booking request " + requestId + " for " + username + " accepted.";
        } else if (action.equals("decline")) {
            message = "Booking request " + requestId + " for " + username + " declined.";
        } else {
            message = "Invalid action.";
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users</title>
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
    <h1>Manage User Requests</h1>

    <% if (!message.isEmpty()) { %>
        <p class="message"><%= message %></p>
    <% } %>

    <h2>Pending Requests</h2>
    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Requested Room</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
                for (Map<String, String> userRequest : userRequests) { 
            %>
                <tr>
                    <td><%= userRequest.get("username") %></td>
                    <td><%= userRequest.get("room") %></td>
                    <td>
                        <form method="post" action="">
                            <input type="hidden" name="username" value="<%= userRequest.get("username") %>">
                            <input type="hidden" name="requestId" value="<%= userRequest.get("requestId") %>">
                            <button type="submit" name="action" value="accept">Accept</button>
                            <button type="submit" name="action" value="decline">Decline</button>
                        </form>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <footer>
        <p>&copy; 2024 Travel Homestays</p>
    </footer>
</body>
</html>

