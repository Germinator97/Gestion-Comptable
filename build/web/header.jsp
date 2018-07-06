<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers de materialize -->
<!-- Début -->
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.css"  media="screen,projection"/>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.10/angular.min.js"></script>
<!-- Fin -->

<!-- Navbar -->
<!-- Début -->
<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper">
            <a href="index.jsp" class="brand-logo">Gestion Comptable<i class="material-icons prefix">book</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">home</i>Accueil</a></li>
                <li><a href="loginEnregistrements.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">edit</i>Enregistrements</a></li>
                <li><a href="liste.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">book</i>Listes</a></li>
                <li><a href="loginCompte.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">person</i>Utilisateurs</a></li>
            </ul>
        </div>
    </nav>
</div>
<!-- Fin -->

<jsp:include page="body.jsp"></jsp:include>