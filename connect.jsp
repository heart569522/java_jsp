<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "user";
String user = "root";
String password = "";

try {
    Class.forName(driver);
} catch (ClassNotFoundException e){
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

connection = DriverManager.getConection(connectionUrl+database, user, password);
statement = connection.createStatement();

if(connection != null){
    out.println("Database Connected.");
} else {
    out.println("Database Connect Failed.");
}

%> 

