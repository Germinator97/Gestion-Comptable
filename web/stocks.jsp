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
                <div class="row" id="dynamic_field_new">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">date_range</i>
                        <input type="text" class="datepicker" required="required">
                        <label for="dateEntree">Date d'entrée</label>
                    </div>
                    <div>
                        <div class="input-field col s8"  style="position: relative; margin-right: 1%;">
                            <i class="material-icons prefix">local_offer</i>
                            <input id="nomProduitEntree" type="text" required="required">
                            <label for="nomProduitEntree">Nom du produit N°1</label>
                        </div>
                        <div class="input-field col s3">
                            <select id="quantiteProduitsEntree" class="browser-default" required="required">
                                <option value="" disabled selected>Quantité du produit</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">...</option>
                            </select>
                        </div>
                        <div class="input-field col s8">
                            <i class="material-icons prefix">attach_money</i>
                            <input id="prixProduitEntree" type="text" required="required">
                            <label for="prixProduitEntree">Prix du produit</label>
                        </div>
                        <div class="input-field col s4">
                            <button class="btn btn-large" id="addNew" name="addNew" onclick="addNewProduit();" style="position: relative; background: #00E676; font-size: 0.9em;">Ajouter un nouveau produit</button>
                        </div>
                    </div>
                </div>
                <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
            </form>
        </div>
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les sorties de stocks</p>
        
        <div class="row" style="position: relative; width: 70%;">
            <form class="col s12">
                <div class="row" id="dynamic_field_sortie">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">date_range</i>
                        <input type="text" class="datepicker" required="required">
                        <label for="dateSortie">Date de sortie</label>
                    </div>
                    <div>
                        <div class="input-field col s8"  style="position: relative; margin-right: 1%;">
                            <i class="material-icons prefix">local_offer</i>
                            <input id="nomProduitSortie" type="text" required="required">
                            <label for="nomProduitSortie">Nom du produit N°1</label>
                        </div>
                        <div class="input-field col s3">
                            <select id="quantiteProduitsSortie" class="browser-default" required="required">
                                <option value="" disabled selected>Quantité du produit</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">...</option>
                            </select>
                        </div>
                        <div class="input-field col s8">
                            <i class="material-icons prefix">attach_money</i>
                            <input id="prixProduitSortie" type="text" required="required">
                            <label for="prixProduitSortie">Prix du produit</label>
                        </div>
                        <div class="input-field col s4">
                            <button class="btn btn-large" id="addSortie" name="addSortie" onclick="addSortieProduit();" style="position: relative; background: #00E676; font-size: 0.9em;">Ajouter un produit</button>
                        </div>
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
                        <input id="recherche" type="text" required="required" name="recherche">
                        <label for="recherche">Rechercher un produit en stock</label>
                    </div> 
                    <div class="input-field col s4">
                        <button class="btn btn-large" type="submit" id="rechercher" name="rechercher" style="background: #00E676;">Rechercher</button>
                    </div> 
                </div>
            </form>
        </div>
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
            <li>
                <div class="collapsible-header">
                    <div>
                        <i class="material-icons left">local_offer</i>
                    </div>
                    <div>
                        <span class="title">Nom, prix, quantité du produit et la date d'entrée</span>
                    </div>
                </div>
            </li>
        </ul>
        <script>
            var i=2;
            function dynamicNew() {
                return '<div><div class="input-field col s8"  style="position: relative; margin-right: 1%;"><i class="material-icons prefix">local_offer</i><input id="nomProduitEntree" type="text" required="required"><label for="nomProduitEntree">Nom du produit N°'+i+'</label></div><div class="input-field col s3"><select id="quantiteProduitsEntree" class="browser-default" required="required"><option value="" disabled selected>Quantité du produit</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">...</option></select></div><div class="input-field col s8"><i class="material-icons prefix">attach_money</i><input id="prixProduitEntree" type="text" required="required"><label for="prixProduitEntree">Prix du produit</label></div><div class="input-field col s4"><button class="btn btn-large" id="removeNew" name="removeNew" onclick="removeNewProduit(this);" style="position: relative; background: #00E676; font-size: 0.9em;">Supprimer le produit</button></div></div>';
            }
            
            function addNewProduit() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamicNew();
                document.getElementById("dynamic_field_new").appendChild(div);
            }
            
            function removeNewProduit(div) {
                document.getElementById("dynamic_field_new").removeChild(div.parentNode.parentNode.parentNode);
            }
        </script>
        
        <script>
            var i=2;
            function dynamicSortie() {
                return '<div><div class="input-field col s8"  style="position: relative; margin-right: 1%;"><i class="material-icons prefix">local_offer</i><input id="nomProduitSortie" type="text" required="required"><label for="nomProduitSortie">Nom du produit N°1</label></div><div class="input-field col s3"><select id="quantiteProduitsSortie" class="browser-default" required="required"><option value="" disabled selected>Quantité du produit</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">...</option></select></div><div class="input-field col s8"><i class="material-icons prefix">attach_money</i><input id="prixProduitSortie" type="text" required="required"><label for="prixProduitSortie">Prix du produit</label></div><div class="input-field col s4"><button class="btn btn-large" id="removeSortie" name="removeSortie" onclick="removeSortieProduit(this);" style="position: relative; background: #00E676; font-size: 0.9em;">Supprimer le produit</button></div></div>';
            }
            
            function addSortieProduit() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamicSortie();
                document.getElementById("dynamic_field_sortie").appendChild(div);
            }
            
            function removeSortieProduit(div) {
                document.getElementById("dynamic_field_sortie").removeChild(div.parentNode.parentNode.parentNode);
            }
        </script>
        
        <script>
            M.AutoInit();
        </script>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>

</html>