<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ include file="connect.jsp" %>

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
         
         String db_field_idstu = null;
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
               if (fieldName.equals("username")) {
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
         String sql = "INSERT INTO student (id_student, prename, firstname, lastname, age, gender, address, mobile, email, username, password) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
         pstatement = connection.prepareStatement(sql);
         pstatement.setString(1, db_field_username);
         pstatement.setString(2, db_field_password);
         //pstatement.setString(3, db_field_authors);
         pstatement.setString(4, db_field_file);
         updateQuery = pstatement.executeUpdate();
            if (updateQuery != 0)  { 
        %>
<script>
window.location.replace("iii.jsp");
</script>
  <%
}

      } catch (Exception ex) {

         System.out.println(ex);

      }

   }
%>