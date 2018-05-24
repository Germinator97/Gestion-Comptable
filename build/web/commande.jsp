<%-- 
    Document   : commande
    Created on : 18 mai 2018, 12:57:51
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
        
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les commandes</p>
        <div class="row" style="position: relative; width: 70%;">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">date_range</i>
                        <input id="date" type="date" class="validate" required="required">
                        <label for="date">Date</label>
                    </div>
                    <div class="input-field col s6">
                        <select id="nombreProduits" class="browser-default" required="required">
                            <option value="" disabled selected>Nombre de produits de la commande</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">...</option>
                        </select>
                    </div>
                    <div class="input-field col s6" style="position: relative; margin-right: 1%;">
                        <i class="material-icons prefix">local_offer</i>
                        <input id="nomProduit" type="text" class="validate" required="required" disabled="disabled">
                        <label for="nomProduit">Nom du produit</label>
                    </div>
                    <div class="input-field col s6">
                        <select id="nombreProduits" class="browser-default" required="required" disabled="disabled">
                            <option value="" disabled selected>Quantité du produit</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">...</option>
                        </select>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">attach_money</i>
                        <input id="prixProduitSortie" type="text" class="validate" required="required" disabled="disabled">
                        <label for="peixProduitSortie">Prix du produit</label>
                    </div>
                </div>
                <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
            </form>
        </div>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>

</html>