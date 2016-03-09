<%-- 
    Document   : activation
    Created on : 09.Mar.2016, 17:29:16
    Author     : Sezer
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    
<%@ page import ="java.sql.*" %>
<%@ page import="databasecon.*" %>

   
<%
    String userid =session.getAttribute("userid").toString(); 
    String code = request.getParameter("code");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eyillik", "root","sezer");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from mesajdogrulama where sinif='" + userid + "' and mesajcodu='" + code + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("profile.jsp");
        
    } else {
        response.sendRedirect("foractive.jsp");
        
        out.println("false");

    }
    
    
%>

    
    
    
</body>
</html>
