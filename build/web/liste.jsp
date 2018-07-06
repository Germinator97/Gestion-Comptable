<%-- 
    Document   : liste
    Created on : 11 juin 2018, 16:33:02
    Author     : Asus R511L
--%>

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
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/comptabilite" user = "root"  password = ""/>
        
        <!-- Importation du fichier header.jsp  -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">La liste des élèves inscrit</p>
        
        <sql:query dataSource="${lecture}" var="inscrits">
            SELECT * FROM inscription;
        </sql:query>
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">people</i>
                            Liste des élèves inscrits
                        </div>
                        <div class="collapsible-body">
                        
                            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                                <c:forEach var="inscrit" begin="0" items="${inscrits.rows}">
                                    <div class="collapsible-header">
                                        <i class="material-icons">person</i>
                                        <c:out value="${inscrit.matricule}"/>
                                        -
                                        <c:out value="${inscrit.nom}"/>
                                        <c:out value="${inscrit.prenom}"/>
                                        -
                                        <c:out value="${inscrit.date}"/>
                                        -
                                        <c:out value="${inscrit.lieu}"/>
                                        -
                                        <c:out value="${inscrit.classe}"/>
                                        -
                                        <c:out value="${inscrit.telephone}"/>
                                        -
                                        <c:out value="${inscrit.email}"/>
                                    </div>
                                    </c:forEach>
                            </ul>
                            
                        </div>
                    </li>
                </ul>
        <br>
        <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">La liste des produits en stock</p>
        
        <sql:query dataSource="${lecture}" var="stocks">
            SELECT * FROM stock;
        </sql:query>
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">local_offer</i>
                            Liste des produits en stock
                        </div>
                        <div class="collapsible-body">
                            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                              
                            <c:forEach var="stock" begin="0" items="${stocks.rows}">
                                    <div class="collapsible-header">
                                        <i class="material-icons">local_offer</i>
                                        <c:out value="${stock.nom}"/>
                                        -
                                        <c:out value="${stock.caracteristiques}"/>
                                        -
                                        <c:out value="${stock.prix}"/> 
                                        Frs CFA
                                        -
                                        <c:out value="${stock.quantite}"/>
                                        produits en stock
                                    </div>
                                    </c:forEach>
                            </ul>
                        </div>
                    </li>
                </ul>
        <br>
        <p style="text-align: center; font-family: Verdana; font-size: 2em; color: white;">La liste des produits sortis</p>
        
        <sql:query dataSource="${lecture}" var="sorties">
            SELECT * FROM sortie;
        </sql:query>
        <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">local_offer</i>
                            Liste des produits sortis du stock
                        </div>
                        <div class="collapsible-body">
                            <ul class="collapsible" style="position: relative; width: 90%; margin-left: 5%;">
                                
                            <c:forEach var="sortie" begin="0" items="${sorties.rows}">
                                <sql:query dataSource="${lecture}" var="produits">
                                    SELECT * FROM stock WHERE stock.id=${sortie.produit}
                                </sql:query>
                                <c:forEach var="produit" begin="0" items="${produits.rows}">
                                    <div class="collapsible-header">
                                        <i class="material-icons">local_offer</i>
                                        <c:out value="${produit.nom}"/>
                                        -
                                        <c:out value="${produit.caracteristiques}"/>
                                        -
                                        <c:out value="${produit.prix}"/>
                                        Frs CFA
                                        -
                                        <c:out value="${sortie.quantite}"/>
                                        produits sortis du stock
                                    </div>
                                    </c:forEach>
                                    </c:forEach>
                            </ul>
                        </div>
                    </li>
                </ul>
        <br><br>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
        <script>
            M.AutoInit();
        </script>
        
    </body>
    
</html>
