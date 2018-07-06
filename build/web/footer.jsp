<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers de materialize -->
<!-- Début -->
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.css"  media="screen,projection"/>
<!-- Fin -->

<!-- Pieds de page -->
<!-- Début -->
<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h4 class="white-text"><i class="material-icons prefix">book</i>  Gestion Comptable</h4>
            </div>
            <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Menu</h5>
                <ul>
                    <li><a class="grey-text text-lighten-3" href="index.jsp">Acceuil</a></li>
                    <li><a class="grey-text text-lighten-3" href="loginEnregistrements.jsp">Enregistrements</a></li>
                    <li><a class="grey-text text-lighten-3" href="liste.jsp">Listes</a></li>
                    <li><a class="grey-text text-lighten-3" href="loginCompte.jsp">Utilisateurs</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container" style="text-align: center;">
            © 2018 Copyright - Tous droits réservés 
        </div>
    </div>
</footer>
<!-- Fin -->

<jsp:include page="body.jsp"></jsp:include>