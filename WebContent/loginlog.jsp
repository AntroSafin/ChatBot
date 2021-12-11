<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="sample.Databaseconnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<% 
String username = request.getParameter("username");
String email = request.getParameter("email");

try{
    Connection conn = Databaseconnect.getConnection();
	System.out.println("Connected...........");
	String sql="INSERT INTO userslog (name,email) VALUES(?,?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, username);
	stmt.setString(2, email);
    stmt.executeUpdate();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

response.sendRedirect("bot.jsp");
%>
</body>
</html>