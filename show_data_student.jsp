<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="connect_test.jsp" %>
<%@ include file="template/template_head.jsp" %>
<%@ include file="template/template_script.html" %>
<body>
    <div class="container-fluid">
        <h1><a href="form.jsp" class="btn btn-primary">ADDMEMBER</a></h1>
            <table style="width:100%" class="table table-dark table-striped">
                    <thead>
                        <tr style="text-align: center">
                            <th>No.</th>
                            <th>ID_student</th>
                            <th>Prename</th>
                            <th>Firstname</th>
                            <th>Lastname</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Tel</th>
                            <th>Username</th>
                            <th>Picture</th>
                            <th>#</th>
                        </tr>
                    </thead>
                    <%
                        try{
                        String sql ="select * from student ";
                        resultSet = statement.executeQuery(sql);
                        int i=1;
                        while(resultSet.next()){
                            %>
                            <tbody class="table-light">
                                <tr style="text-align: center">
                                    <td><%=i%></td>
                                    <td><%=resultSet.getString("id_student") %></td>
                                    <td><%=resultSet.getString("prename") %></td>
                                    <td><%=resultSet.getString("firstname") %></td>
                                    <td><%=resultSet.getString("lastname") %></td>
                                    <td><%=resultSet.getString("age") %></td>
                                    <td><%=resultSet.getString("gender") %></td>
                                    <td><%=resultSet.getString("address") %></td>
                                    <td><%=resultSet.getString("mobile") %></td>
                                    <td><%=resultSet.getString("username") %></td>
                                    <td><img width="100px" src="images/<%=resultSet.getString("img_name") %>" alt=""></td>
                                    <td>
                                        <button type="submit" class="btn btn-warning">EDIT</button>
                                        <button type="submit" class="btn btn-danger">DELETE</button>
                                    </td>
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