<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>
<%@ include file="./template/template_head.jsp" %>
<body>
<%
	Object strauthors = session.getAttribute("strauthors");
	if(strauthors == null) // Check Login
	{
		response.sendRedirect("index.jsp");
	}
    %>
<form action="logout.jsp">
	<h1>Member Page</h1>

	<input type="submit" class="btn btn-danger" value="ออกจากระบบ">
	</form>
<div class="container">
<a href="forminsert.html" class="btn btn-info" role="button">เพิ่มข้อมูล</a>
<table border="1">
<tr>
<td>userid</td>
<td>username</td>
<td>password</td>
<td></td>
<td></td>
</tr>
<%
try{

String sql ="select * from member";
resultSet = statement.executeQuery(sql);
int i=1;
while(resultSet.next()){
%>
<tr>
<td><%=i%></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<%  if(strauthors.equals("admin")){ 
    %>
 <form action="insert.jsp?userid=<%=resultSet.getString("userid") %>" method="POST">
<td><button type="submit" name="userid" class="btn btn-danger">Delete</button></a></td>
</form>
<form action="edit.jsp?userid=<%=resultSet.getString("userid") %>" method="POST">
<td><button type="submit" class="btn btn-warning">EDIT</button></td>
</form>
<%
}
%>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>

</html>