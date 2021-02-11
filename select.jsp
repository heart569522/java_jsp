<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%@ include file="./template/template_head.html" %>
        <body>
            <div class="container">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>USERNAME</th>
                            <th>PASSWORD</th>
                            <th>FIRSTNAME</th>
                            <th>LASTNAME</th>
                            <th>ADDRESS</th>
                            <th>PHONE</th>
                            <th>TYPE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% String sql="select * from lib_member" ; resultSet=statement.executeQuery(sql);
                            while(resultSet.next()){ %>
                            <tr>
                                <td><%=resultSet.getString("member_id") %></td>
                                <td><%=resultSet.getString("member_username") %></td>
                                <td><%=resultSet.getString("member_password") %></td>
                                <td><%=resultSet.getString("member_fisrtname") %></td>
                                <td><%=resultSet.getString("member_lastname") %></td>
                                <td><%=resultSet.getString("member_address") %></td>
                                <td><%=resultSet.getString("member_phone") %></td>
                                <td><%=resultSet.getString("member_type") %></td>
                            </tr>
                        <% } { connection.close(); } %>
                    </tbody>
                </table>
            </div>
        </body>
<%@ include file="./template/template_script.html" %>