<%-- 
    Document   : enregistrements
    Created on : 11 juin 2018, 10:12:59
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('Images/photo_bg.jpg') 50% fixed; background-size: cover;">
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/comptabilite" user = "root"  password = ""/>
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br>
        <ul class="tabs tabs-fixed-width tab-demo z-depth-1" style="position: relative; width: 90%;">
            <li class="tab"><a href="#inscriptions">Inscription</a></li>
            <li class="tab"><a href="#stocks">Stock</a></li>
            <li class="tab"><a href="#utilisateurs">Utilisateurs</a></li>
        </ul>
        <br>
        
        <div id="inscriptions" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Enregistrement des différentes inscriptions.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateInscription();" name="inscription" id="inscription" method="post" action="insertionInscription">
                    <div class="row" style="background-color: whitesmoke;">
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">person</i>
                            <input id="nom" name="nom" type="text" required="required">
                            <label for="nom">Nom</label>
                        </div>  
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">person</i>
                            <input id="prenom" name="prenom" type="text" required="required">
                            <label for="prenom">Prenom</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">vpn_key</i>
                            <input id="matricule" name="matricule" type="text" required="required">
                            <label for="matricule">Matricule</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">school</i>
                            <input id="classe" name="classe" type="text" required="required">
                            <label for="classe">Classe</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">date_range</i>
                            <input type="text" id="date" name="date" class="datepicker" required="required">
                            <label for="date">Date de naissance</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">home</i>
                            <input id="lieu" name="lieu" type="text"required="required">
                            <label for="lieu">Lieu de naissance</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">email</i>
                            <input id="email" name="email" type="email"required="required">
                            <label for="email">Email</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">phone</i>
                            <input id="telephone" name="telephone" type="tel"required="required">
                            <label for="telephone">Telephone</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">date_range</i>
                            <input id="annee" name="annee" type="text" required="required">
                            <label for="annee">Année-Académique</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">attach_money</i>
                            <input id="versement" name="versement" type="text" required="required">
                            <label for="versement">Versement</label>
                        </div>
                    </div>
                    <br>
                    <button class="btn btn-large" id="enregistrer" name="enregistrer" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            
            <br><br>
        </div>
        
        <div id="stocks" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Enregistrement des nouveaux produits.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateEntree();" name="entree" id="entree" method="post" action="insertionStock">
                    <div class="row" style="background-color: whitesmoke;">
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">local_offer</i>
                            <input id="nomEntree" name="nomEntree" type="text" required="required">
                            <label for="nomEntree">Nom du produit</label>
                        </div>
                        <div class="input-field col s4">
                            <i class="material-icons prefix" style="color: black;">attach_money</i>
                            <input id="prixEntree" name="prixEntree" type="text" required="required">
                            <label for="prixEntree">Prix du produit</label>
                        </div>
                        <div class="input-field col s2">
                            <i class="material-icons prefix" style="color: black;">share</i>
                            <input id="quantiteEntree" name="quantiteEntree" type="text" required="required">
                            <label for="quantiteEntree">Quantité</label>
                        </div>
                        <div class="input-field col s9">
                            <i class="material-icons prefix" style="color: black;">security</i>
                            <textarea class="materialize-textarea" id="caracteristiques" name="caracteristiques" type="text" required="required"></textarea>
                            <label for="caracteristiques">Caractéristiques du produit</label>
                        </div>     
                        <div class="input-field col s3">
                            <button class="btn btn-large" id="validerEntree" name="validerEntree" style="position: relative; background: #00E676; font-size: 0.9em;">Enregistrer entrée</button>
                        </div>
                    </div>
                </form>
            </div>
            
        <sql:query dataSource="${lecture}" var="produits">
            SELECT * FROM stock;
        </sql:query>
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Enregistrement des sorties de produits.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateSortie();" name="sortie" id="sortie" method="post" action="insertionSortie">
                    <div class="row">
                        <div class="input-field col s7">
                            <select id="nomSortie" name="nomSortie" class="browser-default" required="required">
                                <option value="nomSortie" disabled selected>Nom du produit</option>
                            <c:forEach var="produit" begin="0" items="${produits.rows}">
                                    <option value="${produit.id}">
                                        <c:out value="${produit.nom}"/>
                                        -
                                        <c:out value="${produit.caracteristiques}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <sql:query dataSource="${lecture}" var="produits">
                            SELECT * FROM stock;
                        </sql:query>
                        <div class="input-field col s2">
                            <select id="quantiteSortie" name="quantiteSortie" class="browser-default" required="required">
                                <option value="quantiteSortie" disabled selected>Quantité</option>
                            <c:forEach var="quantite" begin="1" step="1" end="20">
                                <option value="${quantite}">
                                    <c:out value="${quantite}"/>
                                </option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="input-field col s3">
                            <button class="btn btn-large" id="validerSortie" name="validerSortie" style="position: relative; background: #00E676; font-size: 0.9em;">Enregistrer sortie</button>
                        </div>
                    </div>
                </form>
            </div>
            <br><br>
        </div>
        
        <div id="utilisateurs" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Enregistrement des différente utilisateurs.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%; color: white;">
                <form class="col s12" onsubmit="return validateComptable();" name="utilisateur" id="utilisateur" method="post" action="comptableInsertion">
                    <div class="row" style="background-color: whitesmoke;">
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">person</i>
                            <input id="nomUser" name="nomUser" type="text" required="required">
                            <label for="nomUser">Nom</label>
                        </div>  
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">person</i>
                            <input id="prenomUser" name="prenomUser" type="text" required="required">
                            <label for="prenomUser">Prenom</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">email</i>
                            <input id="emailUser" name="emailUser" type="email"required="required">
                            <label for="emailUser">Email</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix" style="color: black;">phone</i>
                            <input id="telephoneUser" name="telephoneUser" type="tel"required="required">
                            <label for="telephoneUser">Telephone</label>
                        </div>
                    </div>
                    <br>
                    <button class="btn btn-large" id="enregistrerUser" name="enregistrerUser" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
                </form>
            </div>
            
            <br><br>
        </div>
        
        <script>
            M.AutoInit();
        </script>
        
        <script>
            <%
                HttpSession hsInscription = request.getSession();
                int id = 0;
                if (request.getAttribute("id")!=null) {
                    id = (Integer)request.getAttribute("id");
                    if(id != 0) {
                        session.setAttribute("id", id);
                        response.sendRedirect("enregistrements.jsp");
                    }
                }
            %>
            function validateInscription() {
                
                alert("Enregistrement éffectué !!!");
                
            }
            
            function validateEntree() {
                
                alert("Enregistrement éffectué !!!");
                
            }
            
            function validateComptable() {
                
                alert("Enregistrement éffectué !!!");
                
            }
            
            function validateSortie() {
                
                var link = document.getElementById("sortie");
                
                var nomSortie = document.getElementById("nomSortie").value;
                var quantiteSortie = document.getElementById("quantiteSortie").value;
                
                if (nomSortie === "nomSortie") {
                    alert("Veuillez sélectionner un produit pour éffectuer un enregistrement !!!");
                    document.sortie.nomSortie.focus();
                    return false;
                }
                if (quantiteSortie === "quantiteSortie") {
                    alert("Veuillez sélectionner une quantite pour éffectuer un enregistrement !!!");
                    document.sortie.quantiteSortie.focus();
                    return false;
                }
                alert("Enregistrement éffectué !!!");
                
            }
        </script>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>
