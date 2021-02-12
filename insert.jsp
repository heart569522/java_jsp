<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
  <body>
    <%  
      if(request.getParameter("btnadd")!=null) {
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");
        String firstname = request.getParameter("firstname"); 
        String lastname = request.getParameter("lastname"); 
        String address = request.getParameter("address");
        String phone = request.getParameter("phone"); 
        String author = request.getParameter("author");  

        PreparedStatement pstatement = null;
        int updateQuery = 0;
            try {
              String sql = "insert into lib_member(member_username, member_password, member_firstname, member_lastname, member_address, member_phone, member_type) values(?,?,?,?,?,?,?)";
              pstatement = connection.prepareStatement(sql);
              pstatement.setString(1, username);
              pstatement.setString(2, password);
              pstatement.setString(3, firstname);
              pstatement.setString(4, lastname);
              pstatement.setString(5, address);
              pstatement.setString(6, phone);
              pstatement.setString(7, author);
              updateQuery = pstatement.executeUpdate();
                if (updateQuery != 0)  { 
                  %>
                    <script>window.location.replace("select.jsp");</script>
                  <%
                }
            } catch (Exception ex){
                out.println("Unable to connect to batabase.");
              } finally {
                // close all the connections.
                pstatement.close();
              }
      }

      if(request.getParameter("userid")!=null) {
        String userid =request.getParameter("userid");
        PreparedStatement pstatement = null; 
        String sql ="DELETE FROM lib_member WHERE member_id = "+userid  ;
        pstatement = connection.prepareStatement(sql);
        int updateQuery = pstatement.executeUpdate(); 
          if (updateQuery != 0)  { 
            %>
              <script>window.location.replace("select.jsp");</script>
            <%
          }
      }
    %>
  </body>
</html>