<%-- 
    Document   : logindb
    Created on : Mar 13, 2024, 5:11:59 PM
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
        <% try{
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            String q="select * from register where username='"+user+"' and password='"+pass+"'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/cccc?","root","");
            Statement st=ob.createStatement();
            ResultSet i=st.executeQuery(q);
            if(i.next()){
                %>
                
                <script>
                    alert("login success");
                    window.location="home.jsp"
                    
                </script>
           <% }
else{%>
<script>
                    alert("login failure");
                    window.location="login_1.jsp"
                    
                </script> <%}


      }  catch(Exception e){out.print(e);}%>
    </body>
</html>
