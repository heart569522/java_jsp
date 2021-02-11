<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<!DOCTYPE html>
    <html>
        <body>
            <table border="1">
                <tr>
                    <td>first name</td>
                    <td>last name</td>
                    <td>City name</td>
                </tr>
                <% String sql="select * from lib_member" ; resultSet=statement.executeQuery(sql);
                    while(resultSet.next()){ %>
                    <tr>
                        <td><%=resultSet.getString("id_member") %></td>
                        <td><%=resultSet.getString("username") %></td>
                        <td><%=resultSet.getString("password") %></td>
                    </tr>
                <% } { connection.close(); } %>
            </table>
        </body>
    </html>