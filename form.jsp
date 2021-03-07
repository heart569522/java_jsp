<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*" %> 
<%@ include file="connect.jsp" %> 
<%@ include file="./template/template_head.jsp" %>
<body>
  <div class="container">
    <div style="padding-top: 20px" class="container">
      <h1>INSERT DATA</h1>
      <form action="check_insert.jsp" method="POST" enctype="multipart/form-data">
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <label class="form-label">รหัสประจำตัวนักศึกษา</label>
            <input name="id_student" type="text" class="form-control" id="fieldName" />
          </div>
          <div class="col-md-6 col-sm-6">
            <label class="form-label">คำนำหน้า</label>
            <select class="form-select" name="prename" id="fieldName">
              <option selected disabled>กรุณาเลือก</option>
              <option values="เด็กชาย">เด็กชาย</option>
              <option values="เด็กหญิง">เด็กหญิง</option>
              <option values="นาย">นาย</option>
              <option values="นางสาว">นางสาว</option>
              <option values="นาง">นาง</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <label class="form-label">ชื่อ</label>
            <input name="firstname" type="text" class="form-control" id="fieldName"/>
          </div>
          <div class="col-md-6 col-sm-6">
            <label class="form-label">นามสกุล</label>
            <input name="lastname" type="text" class="form-control" id="fieldName"/>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <label class="form-label">อายุ</label>
            <select class="form-select" name="age" id="fieldName">
              <option selected disabled>กรุณาเลือก</option>
              <%
                int age = 1;
                for(age=1; age<100; age++){
              %>
                  <option value="<%=age %>"><%=age %></option>
              <%
                }
              %> 
            </select>
          </div>
          <div class="col-md-6 col-sm-6">
            <label class="form-label">เพศ</label>
            <select class="form-select" name="gender" id="fieldName">
              <option selected disabled>กรุณาเลือก</option>
              <option value="ชาย">ชาย</option>
              <option value="หญิง">หญิง</option>
            </select>
          </div>
        </div> 
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <label class="form-label">เบอร์โทรศัพท์</label>
            <input name="mobile" type="text" class="form-control" id="fieldName"/>
          </div>
          <div class="col-md-6 col-sm-6">
            <label class="form-label">Email</label>
            <input name="email" type="text" class="form-control" id="fieldName"/>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <label class="form-label">Username</label>
            <input name="username" type="text" class="form-control" id="fieldName"/>
          </div>
          <div class="col-md-6 col-sm-6">
            <label class="form-label">Password</label>
            <input name="password" type="password" class="form-control" id="fieldName"/>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 col-sm-12">
            <label class="form-label">Address</label>
            <textarea
              style="height: 100px"
              name="address"
              class="form-control"
              id="fieldName"
            ></textarea>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-md-12 col-sm-12">
            <input type="file" class="form-control" name="File-upload" id="file" >
          </div>
        </div>
        <br />
        <input type="submit" name="btnadd" class="btn btn-success" />
        <input type="reset" class="btn btn-danger" />
      </form>
    </div>
  </div>

  <%@ include file="./template/template_script.html" %>
</body>
