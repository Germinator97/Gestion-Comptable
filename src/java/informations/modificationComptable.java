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
 * @author Asus R511L
 */
public class modificationComptable {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public modificationComptable() {
        
    }
    
    public int informations(String identifiant, String nom, String prenom, String telephone, String email) {
        
        int id = Integer.parseInt(identifiant);
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sql = "SELECT * FROM comptable WHERE comptable.compte="+id+"";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                
                i = rs.getInt(1);
                
                
            }
            
            if (i != 0) {
                System.out.println("Modification des informations");
                sql = "UPDATE comptable SET nom='"+nom+"', prenom='"+prenom+"', telephone='"+telephone+"', email='"+email+"' WHERE comptable.compte="+id+"";
                pst = con.prepareStatement(sql);
                pst.executeUpdate();
                System.out.println("Modification des informations éffectué");
            }
            System.out.println("Modification des informations");
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
