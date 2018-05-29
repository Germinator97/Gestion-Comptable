<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers de materialize -->
<!-- Début -->
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="Materialize/css/materialize.css"  media="screen,projection"/>
<!-- Fin -->

<!-- Navbar -->
<!-- Début -->
<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper">
            <a href="index.jsp" class="brand-logo">Gestion Comptable<i class="material-icons prefix">book</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">home</i>Acceuil</a></li>
                <li><a href="login.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">book</i>Comptabilité</a></li>
                <li><a href="commande.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">edit</i>Commande</a></li>
                <li><a href="inscription.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">person</i>Inscription</a></li>
                <li><a href="stocks.jsp" style="font-family: verdana; font-size: 1.3em;"><i class="material-icons prefix left">security</i>Stocks</a></li>
            </ul>
        </div>
    </nav>
</div>
<!-- Fin -->

<jsp:include page="body.jsp"></jsp:include>