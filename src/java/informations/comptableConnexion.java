/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import java.sql.*;
import connexion.connexion;

/**
 *
 * @author germinator
 */
public class comptableConnexion {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public comptableConnexion() {
        
    }
    
    public int lecture(String username, String password) {
        
        int id = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            sql = "SELECT compte.id FROM compte, comptable WHERE compte.id = comptable.compte AND compte.username = '"+username+"' AND compte.password = '"+password+"'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
            }
            con.close();
            rs.close();
            return id;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return id;
        }
        
    }
    
}