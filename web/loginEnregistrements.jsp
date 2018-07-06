<%-- 
    Document   : loginAchat
    Created on : 29 mai 2018, 15:59:56
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="login.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="container">
		<h1>Bienvenue à Gestion Comptable</h1>
                <h2>Connectez-vous pour accéder à votre tableau de bord</h2>
                <br>
                <form class="form" onsubmit="return validate();" id="connexion" name="connexion" method="post" action="loginEnregistrements">
                    <input type="text" placeholder="Username" id="username" name="username">
                    <input type="password" placeholder="Password" id="password" name="password">
                    <button type="submit" id="login-button" id="valider" name="valider">Login</button>
		</form>
            </div>
            <ul class="bg-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        
        <script>
            <%
            
                HttpSession hs = request.getSession();
                int id = 0;
                if (request.getAttribute("id")!= null) {
                    id = (Integer)request.getAttribute("id");
                    if (id != 0) {
                        session.setAttribute("username", request.getAttribute("username"));
                        session.setAttribute("id", id);
                        response.sendRedirect("enregistrements.jsp");
                    }
                    else {
                        response.sendRedirect("loginEnregistrements.jsp");
                    }
                }

            %>
            function validate() {
                
                var link = document.getElementById("connexion");
                
                var user = document.connexion.username.value;
                
                if (user === "") {
                    alert("Veuillez entrer votre nom d'utilisateur");
                    document.connexion.username.focus();
                    return false;
                }
                
                var pwd = document.connexion.password.value;
                var ilegal = /[\W_]/;
                
                if (pwd === "") {
                    alert("Veuillez entrer votre mot de passe");
                    document.connexion.password.focus();
                    return false;
                }
                
                else if (ilegal.test(pwd)) {
                    alert("Votre mot de passe contient des caractères non autorisés");
                    document.connexion.password.focus();
                    return false;
                }
            }
        </script>
    </body>
</html>
