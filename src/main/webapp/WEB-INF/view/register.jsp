<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<center>
<title>Insert title here</title>
</head>
<body>
	<% 
		String error = request.getParameter("error");
		if(error != null){
			
	%>
		<p style="color:red">送信に失敗しました。</p>
		<h3>SNS投稿</h3>
		<form action="RegisterKadaiExecuteServlet" method="post">
			タイトル：<input type="text" name="company" value="<%=request.getParameter("company") %>"><br>
			投稿日：<input type="date" name="date" " value="<%=request.getParameter("date") %>"><br>
			内容：<br>
			<textarea name="note" rows="10" cols="50" placeholder="内容を入力"><%=request.getParameter("note") %></textarea><br>
			<input type="submit" value="送信">
		
		</form>
	<%	
		} else {
	%>
	<h3>SNS投稿</h3>
	<form action="RegisterKadaiExecuteServlet" method="post">
		タイトル：<input type="text" name="company"><br>
		投稿日：<input type="date" name="date"><br>
		内容：<br>
		<textarea name="note" rows="10" cols="50" placeholder="内容を入力"></textarea><br>
		<input type="submit" value="送信">
	
	</form>
	<% } %>
	<a href="TopServlet">戻る</a>
</center>
</body>
</html>