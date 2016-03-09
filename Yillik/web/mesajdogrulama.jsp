<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="databasecon.*" %>
<%
    int code=(int)(Math.random()*11);
    String codestr=Integer.toString(code);
    boolean result;
    //username for abc@gmail.com will be "abc"
    String username = "1992raha1";
    String password = "samsunjon1";
    
    String user=(String)request.getParameter("email");
 
    try {
         
        Properties props = System.getProperties();
        props.setProperty("mail.transport.protocol", "smtp");
        props.setProperty("mail.host", "smtp.gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.debug", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");
 
        Session emailSession = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("1992raha1","samsunjon1");
                }
        });
 
        emailSession.setDebug(true);
        Message message = new MimeMessage(emailSession);
        message.setFrom(new InternetAddress(
                "1992raha1@gmail.com"));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(user));
        message.setSubject("code for ");
        message.setText(codestr);
 
        Transport transport = emailSession.getTransport("smtps");
        transport.connect("smtp.gmail.com", username, password);
        transport.sendMessage(message, message.getAllRecipients());
 
         result=true;
      
       } catch (MessagingException e) {
         result=false;
    }
%>

        <%
            if(result){
               

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
      int cevap=ps.executeUpdate();
      PreparedStatement ps1;
      ps1=con.prepareStatement("insert into mesajdogrulama  values (?,?)");
      ps1.setString(1,number);
      ps1.setString(2,codestr);
       int cevap1=ps1.executeUpdate();
    //int i = st.executeUpdate("insert into register  values (?,?,?,?,?,?)");
   // ps=con.prepareStatement("insert into register(ogrno, Ad, Soyad, gmail, sinif, password) values (?,?,?,?,?,?)")Ü
    if (cevap > 0 && cevap1 >0 ) {
        
        
        session.setAttribute("userid", number);
        response.sendRedirect("foractive.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
  
            }
            }
            
    
            else {
                out.print("dogru bir gmail yazini");
            }
        %>
        