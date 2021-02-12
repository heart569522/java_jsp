<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%@ include file="./template/template_head.html" %>
        <body style="background-color: #666;">
        <%
            request.setCharacterEncoding("UTF-8"); 
            response.setContentType("text/html; charset-UTF-8");
            response.setCharacterEncoding("UTF-8"); 
        %>
            <div class="container" style="padding-top: 20px;">
                <table class="table table-strip table-hover">
                    <thead class="table-dark">
                        <tr style="text-align: center;">
                            <th scope="col">ID</th>
                            <th scope="col">USERNAME</th>
                            <th scope="col">PASSWORD</th>
                            <th scope="col">FIRSTNAME</th>
                            <th scope="col">LASTNAME</th>
                            <th scope="col">ADDRESS</th>
                            <th scope="col">PHONE</th>
                            <th scope="col">TYPE</th>
                            <th scope="col">#</th>
                        </tr>
                    </thead>
                    <tbody class="table-light">
                        <% String sql="select * from lib_member" ; resultSet=statement.executeQuery(sql);
                            while(resultSet.next()){ %>
                            <tr>
                                <td style="text-align: center;"><%=resultSet.getString("member_id") %></td>
                                <td><%=resultSet.getString("member_username") %></td>
                                <td><%=resultSet.getString("member_password") %></td>
                                <td><%=resultSet.getString("member_firstname") %></td>
                                <td><%=resultSet.getString("member_lastname") %></td>
                                <td><%=resultSet.getString("member_address") %></td>
                                <td><%=resultSet.getString("member_phone") %></td>
                                <td><%=resultSet.getString("member_type") %></td>
                                <td style="text-align: center;">
                                    <a href="" class="btn btn-warning">Edit</a>
                                    <a href="insert.jsp?userid=<%=resultSet.getString("member_id") %>" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        <% } { connection.close(); } %>
                    </tbody>
                </table>
            </div>
        </body>
<%@ include file="./template/template_script.html" %>