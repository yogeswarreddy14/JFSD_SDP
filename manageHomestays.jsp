<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%
    // Initialize the success message variable
    String successMessage = "";
    
    // Handle form submission
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String homestayName = request.getParameter("homestayName");
        String location = request.getParameter("location");
        String price = request.getParameter("price");
        Part filePart = request.getPart("image"); // Retrieves <input type="file" name="image">
        String fileName = filePart.getSubmittedFileName();

        // Logic to save homestay details goes here
        // Simulating saving with a success message
        successMessage = "Homestay '" + homestayName + "' added successfully!";
        
        // (Optional) Logic to save filePart and homestay details can go here
        
        // Redirect to the same page to avoid resubmission
        response.sendRedirect("manageHomestays.jsp?message=" + java.net.URLEncoder.encode(successMessage, "UTF-8"));
        return; // Stop further processing
    }

    // Check for success message from query parameters after redirect
    String messageFromParam = request.getParameter("message");
    if (messageFromParam != null) {
        successMessage = messageFromParam;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Homestays</title>
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <header>
        <h1>Manage Homestays</h1>
    </header>

    <main>
        <section>
            <h2>Add New Homestay</h2>
            <% if (!successMessage.isEmpty()) { %>
                <div style="color: green; font-weight: bold;">
                    <%= successMessage %>
                </div>
            <% } %>
            <form action="manageHomestays.jsp" method="post" enctype="multipart/form-data">
                <label for="homestayName">Homestay Name:</label>
                <input type="text" id="homestayName" name="homestayName" required><br><br>
                
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" required><br><br>

                <label for="price">Price per night:</label>
                <input type="number" id="price" name="price" required><br><br>
                
                <label for="image">Upload Homestay Photo:</label>
                <input type="file" id="image" name="image" accept="image/*" required><br><br>

                <button type="submit">Add Homestay</button>
            </form>
        </section>

        <section>
            <h2>Existing Homestays</h2>
            <table>
                <thead>
                    <tr>
                        <th>Homestay Name</th>
                        <th>Location</th>
                        <th>Price per night</th>
                        <th>Photo</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Example Homestay</td>
                        <td>Location</td>
                        <td>$100</td>
                        <td><img src="images/example.jpg" alt="Example Homestay" width="100"></td>
                        <td>
                            <form action="deleteHomestay" method="post" style="display:inline;">
                                <input type="hidden" name="homestayId" value="1"> <!-- Dynamic ID -->
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <!-- Repeat for other homestays -->
                </tbody>
            </table>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Travel Homestays</p>
    </footer>
</body>
</html>
