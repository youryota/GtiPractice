<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.EmploymentExam" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<center>
<title>Insert title here</title>
</head>
<body>
	<h3>投稿一覧</h3>
	
	<table border="1">
		<tr>
			<th>No.</th>
			<th>タイトル</th>
			<th>投稿日</th>
			<th>内容</th>
		</tr>
		
	<%
		List<EmploymentExam> list = (List<EmploymentExam>)request.getAttribute("list");
		int index = 1;
		for(EmploymentExam ee : list){
	%>
		<tr>
			<td><%=index %></td>
			<td><%=ee.getCompanyName() %></td>
			<td><%=ee.getExamDate()%></td>
			<td><%=ee.getNote() %></td>
		</tr>
	<%
		index++;
		}
	%>
	</table>
	<a href="TopServlet">戻る</a>
</center>
</body>
</html>