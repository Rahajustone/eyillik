
<%@ page import="java.sql.*,databasecon.*"%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


    <link type="text/css" rel="stylesheet" href="./css/form.css">
    <title>Kayit Formu
    </title>
          
    </head>
<body>
  <div id="form-main">
  <div id="form-div">
    <form name="form" action="mesajdogrulama.jsp" method="post" class="form" id="form1">

        
      
      <p class="name">
        <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Adınız" id="name" />
      </p>
         <p class="name">
        <input name="surname" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Soyadınız" id="name" />
      </p>
      
      
      <p class="email">
        <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Gmailiniz"  value='@bil.omu.edu.tr'/>
           
      </p>
      <p class="email">
        <input name="sifre" type="password" class="validate[required,custom[password]] feedback-input" id="email" placeholder="Şifreniz" />
      </p>
       <p class="email">
        <input name="sifre" type="password" class="validate[required,custom[password]] feedback-input" id="email" placeholder="Şifreniz tekrar giriniz" />
      </p>
      <p class="email">
        <input name="numara" type="text" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Öğrenci numaranız" />
      </p>
        <p class="email">
              <label>
    <select name="sinif" type="button" class="validate[required,custom[email]] feedback-input " id="" value="Sinif" placeholder="Öğrenci numaranız">
        <option>Sinif</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>Hoca</option>
    </select>
    
</label>
      
      
          </p>
      
      
     
      
      
      <div class="submit">
        <input type="submit" value="Kaydol" id="button-blue"/>
        <div class="ease"></div>
      </div>
          
       
    </form>
  </div>
    </div>
</body>
</html>