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
public class insertionComptable {
    
    connexion db = new connexion();
    String sqlCompte = "";
    String insertComptable = "";
    String insertCompte = "";
    Connection con;
    PreparedStatement pstComptable;
    PreparedStatement pstCompte;
    ResultSet rsCompte;
    
    public insertionComptable() {
        
    }
    
    public int inserer(String nom, String prenom, String telephone, String email) {
        
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sqlCompte = "SELECT compte.id FROM compte ORDER BY id DESC LIMIT 1";
            pstCompte = con.prepareStatement(sqlCompte);
            rsCompte = pstCompte.executeQuery();
            while (rsCompte.next()) {
                i = rsCompte.getInt(1);
            }
            i++;
            
            insertComptable = "INSERT INTO comptable(nom, prenom, telephone, email, compte) VALUES('"+nom+"', '"+prenom+"', '"+telephone+"', '"+email+"', "+i+")";
            pstComptable = con.prepareStatement(insertComptable);
            pstComptable.executeUpdate();
          
            insertCompte = "INSERT INTO compte(username, password) VALUES('user"+i+"', 'pass"+i+"')";
            pstCompte = con.prepareStatement(insertCompte);
            pstCompte.executeUpdate();
            
            System.out.println("Enregistrement du compte éffectué");
            
            con.close();
            rsCompte.close();
            return i;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return i;
        }
        
    }
    
}
