package com.example.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Pour simplifier, nous supposons que le nom d'utilisateur et le mot de passe sont "admin"
        if ("admin".equals(username) && "admin".equals(password)) {
            // Créer un cookie pour l'utilisateur
            Cookie userCookie = new Cookie("username", username);
            userCookie.setMaxAge(60 * 60 * 24); // Cookie valable pour 1 jour
            response.addCookie(userCookie);

            // Créer une session pour l'utilisateur
            HttpSession session = request.getSession();
            session.setAttribute("user", username);

            // Rediriger vers la page d'accueil
            response.sendRedirect("home.jsp");
        } else {
            response.getWriter().println("<h3>Nom d'utilisateur ou mot de passe incorrect.</h3>");
        }
    }
}
