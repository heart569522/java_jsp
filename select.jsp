<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%@ include file="./template/template_head.jsp" %>
<% String strauthors = String.valueOf(session.getAttribute("strauthors"));%>
    <body style="background-color: #666;">
    
        <div class="container" style="padding-top: 20px;">
            <%
                if(strauthors.equals("admin")){ 
            %>
                <div class="row">
                    <h1 style="color: #fff; font-size: 75px; float: left;">MEMBER LIST <font color="red">ADMIN</font>
                        <a style="float: right;" href="logout.jsp" class="btn btn-danger">LOGOUT</a>
                    </h1>
                </div>
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
                            <th scope="col">AUTHER</th>
                            <th scope="col"><a href="form_insert.html" class="btn btn-primary">Insert Member</a></th>
                        </tr>
                    </thead>
                    <tbody class="table-light">
                        <% String sql="select * from lib_member" ; 
                        resultSet=statement.executeQuery(sql);
                        while(resultSet.next()){ %>
                        <tr>
                            <td style="text-align: center;"><%=resultSet.getString("member_id") %></td>
                            <td><%=resultSet.getString("member_username") %></td>
                            <td><%=resultSet.getString("member_password") %></td>
                            <td><%=resultSet.getString("member_firstname") %></td>
                            <td><%=resultSet.getString("member_lastname") %></td>
                            <td><%=resultSet.getString("member_address") %></td>
                            <td style="text-align: center;"><%=resultSet.getString("member_phone") %></td>
                            <td style="text-align: center;"><%=resultSet.getString("member_auther") %></td>
                            <td style="text-align: center;">
                                <a href="edit.jsp?userid=<%=resultSet.getString("member_id") %>" class="btn btn-warning">Edit</a>
                                <a href="insert.jsp?userid=<%=resultSet.getString("member_id") %>" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                        <% } { connection.close(); } %>
                    </tbody>
                </table>
            <%
                } else if(strauthors.equals("member"))  {
            %>
                <div class="row">
                    <h1 style="color: #fff; font-size: 75px; float: left;">MEMBER LIST
                        <a style="float: right;" href="logout.jsp" class="btn btn-danger">LOGOUT</a>
                    </h1>
                </div>
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
                            <%-- <th scope="col">AUTHER</th>
                            <th scope="col"><a href="form_insert.html" class="btn btn-primary">Insert Member</a></th> --%>
                        </tr>
                    </thead>
                    <tbody class="table-light">
                        <% String sql="select * from lib_member" ; 
                        resultSet=statement.executeQuery(sql);
                        while(resultSet.next()){ %>
                        <tr>
                            <td style="text-align: center;"><%=resultSet.getString("member_id") %></td>
                            <td><%=resultSet.getString("member_username") %></td>
                            <td><%=resultSet.getString("member_password") %></td>
                            <td><%=resultSet.getString("member_firstname") %></td>
                            <td><%=resultSet.getString("member_lastname") %></td>
                            <td><%=resultSet.getString("member_address") %></td>
                            <td style="text-align: center;"><%=resultSet.getString("member_phone") %></td>
                            <%-- <td style="text-align: center;"><%=resultSet.getString("member_auther") %></td>
                            <td style="text-align: center;">
                                <a href="edit.jsp?userid=<%=resultSet.getString("member_id") %>" class="btn btn-warning">Edit</a>
                                <a href="insert.jsp?userid=<%=resultSet.getString("member_id") %>" class="btn btn-danger">Delete</a>
                            </td> --%>
                        </tr>
                        <% } { connection.close(); } %>
                    </tbody>
                </table>
            <%
                } else {
            %>  
                <script>window.location.replace("index.jsp");</script>
            <%
                }
            %>
                
        </div>
    </body>
<%@ include file="./template/template_script.html" %>