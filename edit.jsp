<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ include file="./template/template_head.jsp" %>
<body>
<div class="container">
	<%	
		String userid =request.getParameter("userid");
		String sql = "SELECT * FROM lib_member WHERE member_id= "+userid  ;
		resultSet = statement.executeQuery(sql);
		if(resultSet != null) {
			resultSet.next();
		%>
	<form name="frmUpdate" method="post" action="insert.jsp?editid=<%=resultSet.getString("userid")%>">	
		<h1>Update Form <h1>
			<table width="428" border="1">	
			<tr>
				<th width="181">
				<div align="left">userid</div></th>
				<td width="231"><%=resultSet.getString("userid")%></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">username</div></th>
				<td><input class="form-control" type="text" name="txtusername" size="20" value="<%=resultSet.getString("username")%>"></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">password </div></th>
				<td><input class="form-control" type="text" name="txtpassword" size="20" value="<%=resultSet.getString("password")%>"></td>
			</tr>

			</table> 
		<input type="submit" value="Save" class="btn btn-info">
		</form> 
		
		<% 
		}
	%>
	</div>
</body>
</html>