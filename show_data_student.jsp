<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="connect_test.jsp" %>
<%@ include file="template/template_head.jsp" %>
<%@ include file="template/template_script.html" %>
<body>
    <div class="container">
        <h1><a href="form.jsp" class="btn btn-primary">ADDMEMBER</a></h1>
            <table style="width:100%" class="table table-dark table-striped">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>ID_student</th>
                            <th>Firstname</th>
                            <th>Lastname</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Tel</th>
                            <th>Username</th>
                            <th>Picture</th>
                        </tr>
                    </thead>
                    <%
                        try{
                        String sql ="select * from student ";
                        resultSet = statement.executeQuery(sql);
                        int i=1;
                        while(resultSet.next()){
                            %>
                            <tbody>
                                <tr>
                                    <td><%=i%></td>
                                    <td><%=resultSet.getString("username") %></td>
                                    <td><%=resultSet.getString("password") %></td>
                                    <td><%=resultSet.getString("authors") %></td>
                                    <td><img width="100px" src="images/<%=resultSet.getString("picture") %>" alt=""></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><button type="submit" class="btn btn-warning">EDIT</button></td>
                                    <td><button type="submit" class="btn btn-danger">DELETE</button></td>
                                </tr>
                            </tbody>
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