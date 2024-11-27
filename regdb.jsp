<%-- 
    Document   : regdb
    Created on : Nov 27, 2023, 11:43:47 AM
    Author     : ELCOT
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%try{
           String un=request.getParameter("username");
           String pass=request.getParameter("password");
           String e=request.getParameter("email");
           String ph=request.getParameter("phone");
           String gen=request.getParameter("gender");
           String zip=request.getParameter("zip");
           String q="insert into register(username,password,email,phone,gender,zip)values('"+un+"','"+pass+"','"+e+"','"+ph+"','"+gen+"','"+zip+"')";
           Class.forName("com.mysql.jdbc.Driver");
           Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/cccc?","root","");
           Statement St=ob.createStatement();
           int i=St.executeUpdate(q);
           if(i>0){%>
           <script>
               alert("succes");
               window.location="login_1.jsp"
               </script>
               <%}else{%>
               <script>
               alert("failure");
               </script>
               <%}}catch(Exception e){out.print(e);}
               %>
      
     </body>
</html>
