<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<center>
<title>Insert title here</title>
</head>
<body>
	<%
		Account ac = (Account)session.getAttribute("user");
	%>
	<h3>SNSアプリ</h3>
	<p>ようこそ<%=ac.getName() %>さん</p>
	<a href="RegisterKadaiServlet">投稿</a><br>
	<a href="ListKadaiServlet">投稿一覧</a><br>
	<a href="LogoutServlet">ログアウト</a>
</center>
</body>
</html>