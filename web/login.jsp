<%-- 
    Document   : login
    Created on : 27 mai 2018, 18:09:13
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
  <title>Animated login form</title>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='login.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    </head>
    <body>
        <div class="wrapper">
            <h1>Bienvenue à Gestion Comptable</h1>
            <form class="login" onsubmit="return validate();" id="connexion" name="connexion" action="loginComptable" method="post">
                <p class="title">Connectez-vous !</p>
                <input type="text" placeholder="Username" id="username" name="username" autofocus/>
                <i class="fa fa-user"></i>
                <input type="password" placeholder="Password" id="password" name="password" />
                <i class="fa fa-key"></i>
                <button class="state" type="submit" id="valider" name="valider">Login</button>
            </form>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        
         <script>
            <%
            
                HttpSession hs = request.getSession();
                String id;
                if (request.getAttribute("id")!=null) {
                    id = (String)request.getAttribute("id");
                    if (id != null) {
                        response.sendRedirect("comptabilite.jsp");
                    }
                    else {
                        getServletContext().getRequestDispatcher("loginComptable.jsp").forward(request, response);
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
