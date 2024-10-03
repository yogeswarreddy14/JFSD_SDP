<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String assignmentId = request.getParameter("assignmentId");
    String deadline = request.getParameter("deadline");
    String time = request.getParameter("time");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Database connection details
        String jdbcUrl = "jdbc:mysql://localhost:3306/assignmentsystem"; // Your database name
        String dbUser = "your_username"; // Your database username
        String dbPassword = "your_password"; // Your database password

        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the connection
        conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

        // Prepare SQL statement to insert the deadline
        String sql = "INSERT INTO deadlines (assignment_id, deadline, time) VALUES (?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, assignmentId);
        pstmt.setString(2, deadline);
        pstmt.setString(3, time);

        // Execute the query
        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            // Redirect to Add Deadline page with success message
            response.sendRedirect("addDeadline.jsp?message=Deadline+set+successfully.");
        } else {
            // Handle failure case
            response.sendRedirect("addDeadline.jsp?message=Error+setting+deadline.");
        }
    } catch (Exception e) {
        // Redirect to Add Deadline page with error message
        response.sendRedirect("addDeadline.jsp?message=Error+occurred.");
    } finally {
        // Close resources
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
