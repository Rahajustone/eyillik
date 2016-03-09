<%-- 
    Document   : index
    Created on : 09.Mar.2016, 11:23:56
    Author     : Sezer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/giris.css">
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    <title>Giriş Sayfası</title>
</head>
<body>
   
	<div id="flatix">
		<header>
			<h1 class="title">Oturum Aç</h1>
    
		</header>
		<section>
                    <form method="post" action="login.jsp" class="loginform">
				<input type="text" name="email" class="mail" placeholder="E-Mail Adresiniz">
				<input type="password" name="password" class="password" placeholder="Şifreniz">
				<a href="#" title="Şifrenizi mi unutunuz?"><br>Şifremi unuttum.</a>
				<input type="submit" class="login" value="Giriş Yap">
			</form>
			
				<div class="google">
					<a href="#" title="Sign In Google+"><strong> Gmail</strong> ile Giriş Yap</a>
				</div>
                <div class="kayit">
					<a href="register.jsp" title="Kayit" target="_blank"> <strong> Kayit Ol</strong></a>
				</div>
				
				<div class="t"></div>
			
		</section>
		
	</div>
</body>
</html>