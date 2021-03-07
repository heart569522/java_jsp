<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ include file="connect_test.jsp" %>

<%
   File file;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;

   String filePath = "C:\\xampp\\tomcat\\webapps\\java_jsp\\images\\";

   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("tmp/"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax(maxFileSize);
      
      try { 
         List fileItems = upload.parseRequest(request);
         Iterator<FileItem> i = fileItems.iterator();
         
         String db_field_id_student = null;
         String db_field_prename = null;
         String db_field_firstname = null;
         String db_field_lastname = null;
         String db_field_age = null;
         String db_field_gender = null;
         String db_field_address = null;
         String db_field_mobile = null;
         String db_field_email = null;
         String db_field_file = null;
         String db_field_username = null;
         String db_field_password = null;
         //String db_field_authors = null;
         
         while (i.hasNext()) {

            FileItem fi = i.next();

            if (!fi.isFormField()) {
               String fieldName = fi.getFieldName();
               String fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();

               if (fileName.lastIndexOf("\\") >= 0) {
                  file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
               } else {
                  file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
               }

               fi.write(file);

               db_field_file = fileName;
            }

        if (fi.isFormField())
            {
               String fieldName = fi.getFieldName();
               String fieldValue = fi.getString();
                  if (fieldName.equals("id_student")) {
                     db_field_id_student = fieldValue;
                  } 
                  else if (fieldName.equals("prename")){
                     db_field_prename = fieldValue;
                  }
                  else if (fieldName.equals("firstname")){
                     db_field_firstname = fieldValue;
                  }
                  else if (fieldName.equals("lastname")){
                     db_field_lastname = fieldValue;
                  }
                  else if (fieldName.equals("age")){
                     db_field_age = fieldValue;
                  }
                  else if (fieldName.equals("gender")){
                     db_field_gender = fieldValue;
                  }
                  else if (fieldName.equals("address")){
                     db_field_address = fieldValue;
                  }
                  else if (fieldName.equals("mobile")){
                     db_field_mobile = fieldValue;
                  }
                  else if (fieldName.equals("email")){
                     db_field_email = fieldValue;
                  }
                  else if (fieldName.equals("username")){
                     db_field_username = fieldValue;
                  }
                  else if (fieldName.equals("password")){
                     db_field_password = fieldValue;
                  }
                  //else if(fieldName.equals("send_authors"))
                  //{
                  //db_field_authors = fieldValue;
                  //}
            }
         }
            PreparedStatement pstatement = null;
              int updateQuery = 0;
         String sql = "INSERT INTO student (id_student, prename, firstname, lastname, age, gender, address, mobile, email, img_name, img_path, username, password) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
         pstatement = connection.prepareStatement(sql);
         pstatement.setString(1, db_field_id_student);
         pstatement.setString(2, db_field_prename);
         pstatement.setString(3, db_field_firstname);
         pstatement.setString(4, db_field_lastname);
         pstatement.setString(5, db_field_age);
         pstatement.setString(6, db_field_gender);
         pstatement.setString(7, db_field_address);
         pstatement.setString(8, db_field_mobile);
         pstatement.setString(9, db_field_email);
         pstatement.setString(10, db_field_file);
         pstatement.setString(11, db_field_username);
         pstatement.setString(12, db_field_password);
         updateQuery = pstatement.executeUpdate();
            if (updateQuery != 0)  { 
         %>
         <script>
         window.location.replace("show_data.jsp");
         </script>
<%
         }

      } catch (Exception ex) {
         System.out.println(ex);
      }

   }
%>