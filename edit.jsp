<%@page import="java.sql.*" %>
  <%@ include file="connect.jsp" %>
    <%@ include file="./template/template_head.jsp" %>

      <body>
        <div class="container">
          <% 
            String userid = request.getParameter("userid"); 
            String sql="SELECT * FROM lib_member WHERE member_id= "+userid ; 
            resultSet = statement.executeQuery(sql); 
            if(resultSet !=null) { resultSet.next(); 
          %>
            <form name="frmUpdate" method="post" action="insert.jsp?editid=<%=resultSet.getString("member_id")%>">
              <h1>Update Member</h1>
                  <div class="row">
                    <div class="col-md-2 col-sm-2">
                      <label class="form-label">ID Member</label>
                      <input name="id" type="text" class="form-control" value="<%=resultSet.getString("member_id")%>"/>
                    </div>
                    <div class="col-md-5 col-sm-5">
                      <label class="form-label">Enter Username</label>
                      <input name="username" type="text" class="form-control" value="<%=resultSet.getString("member_username")%>"/>
                    </div>
                    <div class="col-md-5 col-sm-5">
                      <label class="form-label">Enter Password</label>
                      <input name="password" type="password" class="form-control" value="<%=resultSet.getString("member_password")%>"/>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 col-sm-6">
                      <label class="form-label">Enter Firstname</label>
                      <input name="firstname" type="text" class="form-control" value="<%=resultSet.getString("member_firstname")%>"/>
                    </div>
                    <div class="col-md-6 col-sm-6">
                      <label class="form-label">Enter Lastname</label>
                      <input name="lastname" type="text" class="form-control" value="<%=resultSet.getString("member_lastname")%>"/>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 col-sm-12">
                      <label class="form-label">Enter Address</label>

                      <textarea style="height: 100px" name="address" class="form-control"> <%=resultSet.getString("member_address")%></textarea>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 col-sm-6">
                      <label class="form-label">Enter Phone Number</label>
                      <input name="phone" type="text" class="form-control" value="<%=resultSet.getString("member_phone")%>"/>
                    </div>
                    <div class="col-md-6 col-sm-6">
                      <label class="form-label">Enter Author</label>
                      <input name="author" type="text" class="form-control" value="<%=resultSet.getString("member_type")%>"/>
                    </div>
                  </div>
                  <br />
                  <input type="submit" value="Save" class="btn btn-info" />
                  <input type="reset" class="btn btn-danger" />
            </form>

            <% } %>
        </div>
      </body>

      </html>