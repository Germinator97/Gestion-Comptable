<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('Images/photo_bg.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <marquee><p style="font-family: verdana; font-size: 1.5em; color: white;">Bienvenue à GestionComptable. Un outil comptable qui permet de gérer la comptabilité d'un établissement scolaire.</p></marquee>
        
        <div class="jumbotron" style="padding: 0.01rem 5rem; margin-bottom: 1rem; background-color: #e9ecef;">
            <h1>Gestion Comptable</h1>
            <p>Bienvenue sur Gestion Comptable la Plateforme de gestion comptable d'un établissement scolaire.</p>
        </div>
        <div class="row" style="position: relative; width: 95%; margin-left: 2.5%; text-align: center; font-family: Verdana; color: black; background-color: whitesmoke;">
          
                <div class="col s4" >
                    <h4>Enregistrements</h4>
                    <hr>
                    <p>Cette section est divisée en 03 parties: </p>
                    <li>Inscriptions: Enregistrement les différents élèves;</li>
                    <li>Stocks: Enregistrer les produits différents au sein de l'établissement;</li>
                    <li>Utilisateurs: Inscriptions des différents utilisateurs (comptables).</li>
                    <br>
                </div>
                <div class="card-stacked col s4">
                    
                    <h4>Listes</h4>
                    
                    <hr>
                    <p>Cette section présente toutes les listes, c'est-à-dire la liste des inscrits pour la scolarité 
                        peut-être consultable via cette interface, également la liste de tous les produits en stocks comme 
                        sont sortis du stock.</p>
                </div>
                <div class="card-stacked col s4">
                    <h4>Utilisateurs</h4>
                    <hr>
                    <p>Cette section affiche les informations sur l'utilisateur connecté, celles sur son compte de 
                        connexion mais également sur ses informations personnelles. Elle montre également les informations 
                        sur les différents autres utilisateurs.</p>
                </div>
         
            
        </div>
       
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
        <script>
            M.AutoInit();
        </script>
        
    </body>
    
</html>