<%-- 
    Document   : foractive
    Created on : 09.Mar.2016, 19:06:49
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
    <form action="activation.jsp" method="post">
        
        <%=session.getAttribute("userid")%>
          <p>Code for website:<input type="text" name="code"></p>
   <input type="submit" value="Kaydol" id="button-blue"/>
        
    </form>
</body>
</html>
