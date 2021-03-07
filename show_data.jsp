<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="connect_test.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4-4.1.1/dt-1.10.23/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4-4.1.1/dt-1.10.23/datatables.min.js"></script>
<title>Document</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-4 col-sm-4">
<a href="form_img.html" class="btn btn-primary">ADDMEMBER</a>
</div>
<div class="col-4"></div>
<div class="col-4"></div>
<div class="col-12 col-sm-12">
<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>No.</th>
                <th>id_student</th>
                <th>Name</th>
                <th>lastname</th>
                <th>age</th>
                <th>gender</th>
                <th>address</th>
                <th>Tel</th>
                <th>Picture</th>
                <th>username</th>
                <th></th>
                <th></th>
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
        <tfoot>
            <tr>
            <th>No.</th>
                <th>id_student</th>
                <th>Name</th>
                <th>lastname</th>
                <th>age</th>
                <th>gender</th>
                <th>address</th>
                <th>Tel</th>
                <th>Picture</th>
                <th>username</th>
                <th></th>
                <th></th>
            </tr>
        </tfoot>
    </table>
    </div>
    </div>
    </div>
    </body>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</html>