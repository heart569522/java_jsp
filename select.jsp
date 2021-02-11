<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%@ include file="./template/template_head.html" %>
        <body>
        <%
            request.setCharacterEncoding("UTF-8"); 
            response.setContentType("text/html; charset-UTF-8");
            response.setCharacterEncoding("UTF-8"); 
        %>
            <div class="container">
                <table class="table table-dark table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">USERNAME</th>
                            <th scope="col">PASSWORD</th>
                            <th scope="col">FIRSTNAME</th>
                            <th scope="col">LASTNAME</th>
                            <th scope="col">ADDRESS</th>
                            <th scope="col">PHONE</th>
                            <th scope="col">TYPE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% String sql="select * from lib_member" ; resultSet=statement.executeQuery(sql);
                            while(resultSet.next()){ %>
                            <tr>
                                <td><%=resultSet.getString("member_id") %></td>
                                <td><%=resultSet.getString("member_username") %></td>
                                <td><%=resultSet.getString("member_password") %></td>
                                <td><%=resultSet.getString("member_firstname") %></td>
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