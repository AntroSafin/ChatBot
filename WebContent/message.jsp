<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sample.ChatBot" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<% 
	String text = request.getParameter("text");
	String res = ChatBot.putData(text);
	out.println(res);
%>
</body>
</html>