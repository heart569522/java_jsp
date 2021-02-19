<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LOGIN</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
      crossorigin="anonymous"
    />

    <style>
      body {
        margin: 0;
        /* background-color: #00e08a; */
      }
    </style>
  </head>

  <body>
    <div class="color-column">
      <div class="container">
        <h1>LOGIN</h1>
        <form
          action="login.jsp"
          name="frmLogin"
          method="post"
          onsubmit="JavaScript:return fncSubmit();"
        >
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <label class="form-label">Username</label>
              <input name="username" type="text" class="form-control" id="txtUsername"/>
            </div>
            <div class="col-md-6 col-sm-6">
              <label class="form-label">Password</label>
              <input name="password" type="password" class="form-control" id="txtPassword"/>
            </div>
          </div>
          <br />
          <button
            style="float: right; margin-left: 5px"
            type="reset"
            class="btn btn-danger"
          >
            Cancel
          </button>
          <button style="float: right;" type="submit" class="btn btn-success">
            OK
          </button>
          <a href="form_insert.html" style="float: left;" class="btn btn-primary">
            Register
          </a>
        </form>
      </div>
    </div>

    <!-- bootstrap JS -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
      integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
      integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
      crossorigin="anonymous"
    ></script>

    <!-- SweetAlert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
      function fncSubmit() {
        if (document.form1.username.value == "") {
          swal({
            title: "ERROR",
            text: "Please Enter Username",
            icon: "error",
          });

          document.form1.username.focus();
          return false;
        }
        if (document.form1.password.value == "") {
          swal({
            title: "ERROR",
            text: "Please Enter Password",
            icon: "error",
          });

          document.form1.password.focus();
          return false;
        }
        document.form1.submit();
      }
    </script>
  </body>
</html>
