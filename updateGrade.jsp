<%@ page import="java.sql.*" %>
<%
    String studentId = request.getParameter("student");
    String assignmentId = request.getParameter("assignment");
    String newGrade = request.getParameter("newGrade");

    // Database connection parameters
    String dbURL = "jdbc:mysql://localhost:3306/your_database"; // Change to your database URL
    String dbUser = "your_username"; // Change to your database username
    String dbPass = "your_password"; // Change to your database password

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establish a connection
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        
        // Update the grade in the database
        if (studentId != null && assignmentId != null && newGrade != null) {
            String sqlUpdate = "UPDATE grades SET grade = ? WHERE student_id = ? AND assignment_id = ?";
            pstmt = conn.prepareStatement(sqlUpdate);
            pstmt.setString(1, newGrade);
            pstmt.setString(2, studentId);
            pstmt.setString(3, assignmentId);
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                // Check if the student is pending
                String sqlStatus = "SELECT status FROM students WHERE student_id = ?";
                pstmt = conn.prepareStatement(sqlStatus);
                pstmt.setString(1, studentId);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    String status = rs.getString("status");
                    if ("pending".equalsIgnoreCase(status)) {
                        // Redirect to pending students page
                        response.sendRedirect("pendingStudents.jsp");
                    } else {
                        // Successfully updated, redirect back to editGrade.jsp
                        response.sendRedirect("editGrade.jsp?success=true&student=" + studentId + "&assignment=" + assignmentId);
                    }
                }
            } else {
                // No rows updated, which might mean the record does not exist
                response.sendRedirect("editGrade.jsp?success=false&student=" + studentId + "&assignment=" + assignmentId);
            }
        } else {
            // Invalid input
            response.sendRedirect("editGrade.jsp?success=false");
        }

    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("editGrade.jsp?success=false");
    } finally {
        // Close resources
        try { if (rs != null) rs.close(); } catch (SQLException ignored) {}
        try { if (pstmt != null) pstmt.close(); } catch (SQLException ignored) {}
        try { if (conn != null) conn.close(); } catch (SQLException ignored) {}
    }
%>
