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
public class stockInsertion {
    
    connexion db = new connexion();
    String sqlStock = "";
    String sql = "";
    String sqlSortie = "";
    Connection con;
    PreparedStatement pstStock;
    PreparedStatement pstSortie;
    PreparedStatement pst;
    ResultSet rs;
    
    public stockInsertion() {
        
    }
    
    public int inserer(String nom, String caracteristiques, String quantite, String prix) {
        
        int total = Integer.parseInt(quantite);
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sql = "SELECT stock.id FROM stock ORDER BY id DESC LIMIT 1";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                i = rs.getInt(1);
            }
            i++;
            
            sqlStock = "INSERT INTO stock(nom, caracteristiques, quantite, prix) VALUES('"+nom+"', '"+caracteristiques+"', "+total+", '"+prix+"')";
            pstStock = con.prepareStatement(sqlStock);
            pstStock.executeUpdate();
            
            sqlSortie = "INSERT INTO sortie(produit) VALUES("+i+")";
            pstSortie = con.prepareStatement(sqlSortie);
            pstSortie.executeUpdate();
            
            System.out.println("Enregistrement éffectué");
            
            con.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
    
}