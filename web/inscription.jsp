<%-- 
    Document   : iinscription
    Created on : 18 mai 2018, 12:58:11
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
        
        <p style="text-align: center; font-family: Verdana; font-size: 2em;">Les inscriptions</p>
        
        <div class="row" style="position: relative; width: 70%;">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">person</i>
                        <input id="nom" type="text" required="required">
                        <label for="nom">Nom</label>
                    </div>  
                    <div class="input-field col s6">
                        <i class="material-icons prefix">person</i>
                        <input id="prenom" type="text" required="required">
                        <label for="prenom">Prenom</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">vpn_key</i>
                        <input id="matricule" type="text" required="required">
                        <label for="matricule">Matricule</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">school</i>
                        <input id="classe" type="text" required="required">
                        <label for="classe">Classe</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">date_range</i>
                        <input id="date" type="date" required="required">
                        <label for="date">Date de naissance</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">home</i>
                        <input id="lieu" type="text"required="required">
                        <label for="lieu">Lieu de naissance</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">email</i>
                        <input id="mail" type="email"required="required">
                        <label for="mail">Email</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">phone</i>
                        <input id="telephone" type="tel"required="required">
                        <label for="telephone">Telephone</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">date_range</i>
                        <input id="an" type="text" required="required">
                        <label for="an">Année-Académique</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="material-icons prefix">attach_money</i>
                        <input id="versement" type="text" required="required">
                        <label for="versement">Versement</label>
                    </div>
                </div>
                <button class="btn btn-large" type="submit" style="position: relative; margin-left: 83%; background: #00E676;">Enregistrer</button>
            </form>
        </div>
        <br>
        
        
        <script>
            M.AutoInit();
        </script>
        
        <!-- Importation du fichier footer.jsp  -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp  -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>

</html>