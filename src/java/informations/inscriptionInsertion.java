/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import connexion.connexion;
import java.sql.*;

/**
 *
 * @author germinator
 */
public class inscriptionInsertion {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public inscriptionInsertion() {
        
    }
    
    public int inserer(String nom, String prenom, String matricule, String classe, String date, String lieu, String email, String telephone, String annee, String versement) {
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            sql = "INSERT INTO inscription(matricule, nom, prenom, date, lieu, classe, telephone, email, annee, versement) VALUES('"+matricule+"', '"+nom+"', '"+prenom+"', '"+date+"', '"+lieu+"', '"+classe+"', '"+telephone+"', '"+email+"', '"+annee+"', '"+versement+"')";
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
            System.out.println("Enregistrement éffectué");
            
            con.close();
            rs.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
    
}
