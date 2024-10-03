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
        String jdbcUrl = "jdbc:mysql://localhost:3306/assignmentsystem"; // Database name
        String dbUser = "root"; // Database username
        String dbPassword = "root"; // Database password

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
            response.sendRedirect("addDeadline.jsp?message=Deadline set successfully.");
        } else {
            // Handle failure case
            response.sendRedirect("addDeadline.jsp?error=Error setting deadline.");
        }
    } catch (SQLException sqlEx) {
        sqlEx.printStackTrace(); // Print stack trace for debugging
        response.sendRedirect("addDeadline.jsp?error=SQL Error: " + sqlEx.getMessage());
    } catch (ClassNotFoundException cnfEx) {
        cnfEx.printStackTrace(); // Print stack trace for debugging
        response.sendRedirect("addDeadline.jsp?error=JDBC Driver not found: " + cnfEx.getMessage());
    } catch (Exception e) {
        e.printStackTrace(); // Print stack trace for debugging
        response.sendRedirect("addDeadline.jsp?error=Error occurred: " + e.getMessage());
    } finally {
        // Close resources
        try {
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException sqlEx) {
            sqlEx.printStackTrace(); // Print stack trace for debugging
        }
    }
%>
