<%-- 
    Document   : compte
    Created on : 11 juin 2018, 23:15:15
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
%>

<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp  -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('Images/photo_bg.jpg') 50% fixed; background-size: cover;">
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/comptabilite" user = "root"  password = ""/>
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <%
                int id = 0;
                if (sesion.getAttribute("id")== null) {
                    id = (Integer)request.getAttribute("id");
                    pageContext.setAttribute("id", id);
                }
        %>
        <sql:query dataSource="${lecture}" var="comptes">
            SELECT * FROM compte WHERE compte.id=${id};
        </sql:query>
        <div class="row" style="position: relative; width: 70%;">
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Mon compte</p>
            <form class="col s12" onsubmit="return validateCompte();" id="compte" name="compte" method="post" action="compteModification">
                <div class="row" style="background-color: whitesmoke;">
                    <c:forEach var="compte" begin="0" items="${comptes.rows}">
                    <div class="input-field col s4">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="username" name="username" type="text" required="required" placeholder="${compte.username}">
                        <label for="username">Nom d'utilisateur</label>
                    </div>  
                    <div class="input-field col s4">
                        <i class="material-icons prefix">vpn_key</i>
                        <input id="password" name="password" type="password" required="required">
                        <label for="password">Mot de passe</label>
                    </div>
                        </c:forEach>
                    <div class="input-field col s4">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="confirm" name="confirm" type="password" required="required">
                        <label for="confirm">Confirmation du mot de passe</label>
                    </div>
                        <input id="identifiant" name="identifiant" type="text" hidden="hidden" value="${id}">
                </div>
                        
                <button id="valider" name="valider" class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Modifier</button>
            </form>
        </div>
                
        <sql:query dataSource="${lecture}" var="combinaisons">
            SELECT * FROM compte, comptable WHERE compte.id=comptable.compte;
        </sql:query>
        <c:forEach var="combinaison" begin="0" items="${combinaisons.rows}">
            <c:if test="${combinaison.compte eq id}">
        <br>
        <div class="row" style="position: relative; width: 70%;">
            
            <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">Mes informations</p>
            <form class="col s12" onsubmit="return validateComptable();" id="combinaison" name="combinaison" method="post" action="comptableModification">
                <div class="row" style="background-color: whitesmoke;">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="nom" name="nom" type="text" required="required" placeholder="${combinaison.nom}">
                        <label for="nom">Nom</label>
                    </div>  
                    <div class="input-field col s6">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="prenom" name="prenom" type="text" required="required" placeholder="${combinaison.prenom}">
                        <label for="prenom">Prenom</label>
                    </div>
                        <div class="input-field col s6">
                        <i class="material-icons prefix">email</i>
                        <input id="mail" name="mail" type="email" required="required" placeholder="${combinaison.email}">
                        <label for="mail">Email</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">phone</i>
                        <input id="telephone" name="telephone" type="tel" required="required" placeholder="${combinaison.telephone}">
                        <label for="telephone">Telephone</label>
                    </div>
                        <input id="identifiant" name="identifiant" type="text" hidden="hidden" value="${id}">
                </div>
                        <button id="enregistrer" name="enregistrer" class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Modifier</button>
            </form>
        </div>
                        </c:if>
        </c:forEach>
        
        
        <br><br>
        
            <sql:query dataSource = "${lecture}" var = "listeComptables">
            SELECT * FROM comptable;
        </sql:query>
                    
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">people</i>
                        Comptables
                    </div>
                    <div class="collapsible-body">
                        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                            <c:forEach var="listeComptable" begin="0" items="${listeComptables.rows}">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">person</i>
                                    <c:out value="${listeComptable.nom}"/>
                                    <c:out value="${listeComptable.prenom}"/>
                                    <c:out value="${listeComptable.telephone}"/>
                                    <c:out value="${listeComptable.email}"/>
                                </div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </li>
            </ul>
            
        <br>
        
        <script>
            M.AutoInit();
        </script>
        
        <script>
                
                function validateComptable() {
                    alert("Vos informations ont été modifiées !!!");
                }
            
            
                function validateCompte() {
                
                var compte = document.getElementById("compte");
                var password = document.getElementById("password").value;
                var confirm = document.getElementById("confirm").value;
                var ilegal = /[\W_]/;
                
                if (confirm === password) {
                    if (ilegal.test(password)) {
                        alert("Votre mot de passe contient des caractères non autorisés !!!");
                        document.compte.password.focus();
                        return false;
                    }
                    else {
                        alert("Modification du compte éffectuée !!!");
                    }
                }
                
                else {
                    alert("Votre mot de passe ne correspond pas. Veuillez le resaisir !!!");
                    document.compte.confirm.focus();
                    return false;
                }
                
            }
            </script>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>