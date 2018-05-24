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
                <div class="row" id="dynamic_field_new">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">date_range</i>
                        <input id="dateNew" type="date" required="required">
                        <label for="dateNew">Date d'entrée</label>
                    </div>
                    <div>
                        <div class="input-field col s8"  style="position: relative; margin-right: 1%;">
                            <i class="material-icons prefix">local_offer</i>
                            <input id="nomProduitNew" type="text" required="required">
                            <label for="nomProduitNew">Nom du produit N°1</label>
                        </div>
                        <div class="input-field col s3">
                            <select id="quantiteProduitsNew" class="browser-default" required="required">
                                <option value="" disabled selected>Quantité du produit</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">...</option>
                            </select>
                        </div>
                        <div class="input-field col s8">
                            <i class="material-icons prefix">attach_money</i>
                            <input id="prixProduitNew" type="text" required="required">
                            <label for="prixProduitNew">Prix du produit</label>
                        </div>
                        <div class="input-field col s4">
                            <button class="btn btn-large" id="addNew" name="addNew" onclick="addNewProduit();" style="position: relative; background: #00E676; font-size: 0.9em;">Ajouter un nouveau produit</button>
                        </div>
                    </div>
                </div>
                <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
            </form>
        </div>
        
        <script>
            var i=2;
            function dynamicNew() {
                return '<div><div class="input-field col s8"  style="position: relative; margin-right: 1%;"><i class="material-icons prefix">local_offer</i><input id="nomProduitNew" type="text" required="required"><label for="nomProduitNew">Nom du produit N°'+i+'</label></div><div class="input-field col s3"><select id="quantiteProduitsNew" class="browser-default" required="required"><option value="" disabled selected>Quantité du produit</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">...</option></select></div><div class="input-field col s8"><i class="material-icons prefix">attach_money</i><input id="prixProduitNew" type="text" required="required"><label for="prixProduitNew">Prix du produit</label></div><div class="input-field col s4"><button class="btn btn-large" id="removeNew" name="removeNew" onclick="removeNewProduit(this);" style="position: relative; background: #00E676; font-size: 0.9em;">Supprimer le produit</button></div></div>';
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
            M.AutoInit();
        </script>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>

</html>