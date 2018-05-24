<%-- 
    Document   : stocks
    Created on : 18 mai 2018, 12:58:23
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>

    <body>
                
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les entrées de stocks</p>
        
        <div class="row" style="position: relative; width: 70%;">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">date_range</i>
                        <input id="dateEntree" type="date" class="validate" required="required">
                        <label for="dateEntree">Date d'entrée</label>
                    </div>
                    <div class="input-field col s6">
                        <select id="nombreProduitsEntree" class="browser-default" required="required">
                            <option value="" disabled selected>Nombre de produits de la commande</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">...</option>
                        </select>
                    </div>
                    <div class="input-field col s6"  style="position: relative; margin-right: 1%;">
                        <i class="material-icons prefix">local_offer</i>
                        <input id="nomProduitEntree" type="text" class="validate" required="required" disabled="disabled">
                        <label for="nomProduitEntree">Nom du produit</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">attach_money</i>
                        <input id="prixProduitEntree" type="text" class="validate" required="required" disabled="disabled">
                        <label for="peixProduitEntree">Prix du produit</label>
                    </div>
                    <div class="input-field col s6">
                        <select id="quantiteProduitsEntree" class="browser-default" required="required" disabled="disabled">
                            <option value="" disabled selected>Quantité du produit</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">...</option>
                        </select>
                    </div>
                </div>
                <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
            </form>
        </div>
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les sorties de stocks</p>
        
        <div class="row" style="position: relative; width: 70%;">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">date_range</i>
                        <input id="dateSortie" type="date" class="validate" required="required">
                        <label for="dateSortie">Date de sortie</label>
                    </div>
                    <div class="input-field col s6">
                        <select id="nombreProduitsSortie" class="browser-default" required="required">
                            <option value="" disabled selected>Nombre de produits pour la sortie</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">...</option>
                        </select>
                    </div>
                    <div class="input-field col s6"  style="position: relative; margin-right: 1%;">
                        <i class="material-icons prefix">local_offer</i>
                        <input id="nomProduitSortie" type="text" class="validate" required="required" disabled="disabled">
                        <label for="nomProduitSortie">Nom du produit</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">attach_money</i>
                        <input id="prixProduitSortie" type="text" class="validate" required="required" disabled="disabled">
                        <label for="peixProduitSortie">Prix du produit</label>
                    </div>
                    <div class="input-field col s6">
                        <select id="quantiteProduitsSortie" class="browser-default" required="required" disabled="disabled">
                            <option value="" disabled selected>Quantité du produit</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">...</option>
                        </select>
                    </div>
                </div>
                <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
            </form>
        </div>
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les produits en stock</p>
        <div class="row" style="position: relative; width: 50%;">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s8">
                        <i class="material-icons prefix">search</i>
                        <input id="rechercheUtilisateur" type="text" class="validate">
                        <label for="rechercheUtilisateur">Rechercher un produit en stock</label>
                    </div> 
                    <div class="input-field col s4">
                        <button class="btn btn-large" style="background: #00E676;">Rechercher</button>
                    </div> 
                </div>
            </form>
        </div>
        <ul class="collection" style="position: relative; width: 90%; margin-left: 5%;">
            <li class="collection-item avatar">
                <div>
                    <span class="title">Nom du produit</span>
                    <p>
                        Quantité prix et date d'entrée du produit
                    </p>
                </div>
                <a class="secondary-content"><i class="material-icons">star</i></a>
            </li>
        </ul>
        
        <script>
            M.AutoInit();
        </script>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>

</html>