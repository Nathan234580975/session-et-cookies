<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>veuillez vous identifiez</title>
    
    <link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
    <h2>bienvenue</h2>
    </header>
    <main>
    	<div class="flexbox">
    		<h3>connexion</h3>
    		<form action="loginServlet" method="post">
        	<label for="username">Nom d'utilisateur:</label>
        	<input type="text" id="username" name="username" required placeholder="enter your name"><br><br>
       	 	<label for="password">Mot de passe:</label>
        	<input type="password" id="password" name="password" required placeholder="enter your password"><br><br>
        	<input type="submit" value="Se connecter">   
    		</form>
    	</div>
    </main>
</body>
</html>
