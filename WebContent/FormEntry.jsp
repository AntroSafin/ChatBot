<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="sample.Databaseconnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("username");
String email = request.getParameter("email");
String mobileno = request.getParameter("mobileno");
String income = request.getParameter("income");
String income1 = request.getParameter("income1");
String income2 = request.getParameter("income2");
String reason = request.getParameter("reason");
String num = request.getParameter("num");

try{
    Connection conn = Databaseconnect.getConnection();
	System.out.println("Connected...........");
	String sql="INSERT INTO form (name,email,mobileno,income_before_2_months,income_after_moratorium,total_emi_amount,reason,moratorium_period) VALUES(?,?,?,?,?,?,?,?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, username);
	stmt.setString(2, email);
	stmt.setString(3, mobileno);
	stmt.setString(4, income);
	stmt.setString(5, income1);
	stmt.setString(6, income2);
	stmt.setString(7, reason);
	stmt.setString(8, num);
    stmt.executeUpdate();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<%response.sendRedirect("NewFile.html"); %>
</body>
</html>