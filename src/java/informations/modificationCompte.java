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
public class modificationCompte {
    
    connexion db = new connexion();
    String sqlUpdate = "";
    Connection con;
    PreparedStatement pstUpdate;
    String sql = "";
    PreparedStatement pst;
    ResultSet rs;
    
    public modificationCompte() {
        
    }
    
    public int compte (String identifiant, String username, String password, String confirm) {
        
        int id = Integer.parseInt(identifiant);
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            sql = "SELECT compte.id FROM compte WHERE compte.username='"+username+"' OR compte.password='"+password+"'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                i = rs.getInt(1);
            }
            if ((password.equals(confirm)) && (i == id)){
                sqlUpdate = "UPDATE compte SET username='"+username+"', password='"+password+"' WHERE compte.id="+id+"";
                pstUpdate = con.prepareStatement(sqlUpdate);
                pstUpdate.executeUpdate();
                System.out.println("Modification du compte éffectué");
            }
            
            con.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
    
    
    
}
