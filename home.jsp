<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="stylesheet" href="style2.css">
    <script src="cookieConsent.js"></script>
    <style>
        #cookie-consent-banner {
            display: none;
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #222;
            color: white;
            text-align: center;
            padding: 10px;
        }
        #cookie-consent-banner button {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <div id="cookie-consent-banner">
        <p>Nous utilisons des cookies pour améliorer votre expérience. En continuant, vous acceptez l'utilisation de cookies.</p>
        <button id="accept-cookies">Accepter</button>
    </div>
    <h2>information de connexion</h2>
    <%
        HttpSession existingSession = request.getSession(false);
        String username = (existingSession != null) ? (String) existingSession.getAttribute("user") : "invité";
    %>
    <p>Bienvenue, <%= username %>!</p>
    <p>Votre session utilisateur est active.</p>
    
    <!-- Bouton de déconnexion -->
    <form action="logout" method="get">
        <input type="submit" value="Déconnexion">
    </form>
</body>
</html>
