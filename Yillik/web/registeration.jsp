<%-- 
    Document   : registeration
    Created on : 28.Şub.2016, 15:42:58
    Author     : Sezer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="databasecon.*" %>
<%
    String name = request.getParameter("name");    
    String surname = request.getParameter("surname");
    String email = request.getParameter("email");
    String passwd=request.getParameter("sifre");
    String number = request.getParameter("numara");
    String sinif = request.getParameter("sinif");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eyillik", "root","sezer");
    Statement st = con.createStatement();
    //ResultSet rs;
      PreparedStatement ps;
      ps=con.prepareStatement("insert into register  values (?,?,?,?,?,?)");
      ps.setString(1,name);
      ps.setString(2,surname);
      ps.setString(3,email);
      ps.setString(4,passwd);
      ps.setString(5,number);
      ps.setString(6,sinif);
      int result=ps.executeUpdate();
      
    //int i = st.executeUpdate("insert into register  values (?,?,?,?,?,?)");
   // ps=con.prepareStatement("insert into register(ogrno, Ad, Soyad, gmail, sinif, password) values (?,?,?,?,?,?)")Ü
    if (result > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("profile.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>


    