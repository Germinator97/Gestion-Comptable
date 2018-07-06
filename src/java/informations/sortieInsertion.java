/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import connexion.connexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author germinator
 */
public class sortieInsertion {
    
    connexion db = new connexion();
    String sqlStock = "";
    String sqlSortie = "";
    String stockUpdate = "";
    String sortieInsert = "";
    String sortieUpdate = "";
    String stockDelete = "";
    Connection con;
    PreparedStatement pst;
    PreparedStatement pstStock;
    PreparedStatement pstSortie;
    PreparedStatement pstDelete;
    PreparedStatement pstInsert;
    PreparedStatement pstUpdate;
    ResultSet rsStock;
    ResultSet rsSortie;
    
    public sortieInsertion() {
        
    }
    
    public int inserer(String nom, String quantite) {
        
        int total = Integer.parseInt(quantite);
        int id = Integer.parseInt(nom);
        int qteStock = 0;
        int idSortie = 0;
        int qteSortie = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sqlStock = " SELECT stock.quantite FROM stock WHERE stock.id="+id+" ";
            pstStock = con.prepareStatement(sqlStock);
            rsStock = pstStock.executeQuery();
            System.out.println("Enregistrer 1");
            while (rsStock.next()) {
                qteStock = rsStock.getInt("quantite");
                System.out.println("Enregistrer 2");
                sqlSortie = " SELECT * FROM sortie WHERE sortie.produit="+id+" ";
                pstSortie = con.prepareStatement(sqlSortie);
                rsSortie = pstSortie.executeQuery();
                
                System.out.println(qteStock);
                System.out.println(total);
                
                System.out.println("Enregistrer 3");
                
                if (qteStock > total) {
                    qteStock = qteStock-total;
                    System.out.println("Enregistrer 4");
                    while (rsSortie.next()) {
                        System.out.println("Enregistrer 0");
                        idSortie = rsSortie.getInt("id");
                        qteSortie = rsSortie.getInt("quantite");
                        System.out.println("Enregistrer 5");
                        qteSortie = qteSortie + total;
                        stockUpdate = " UPDATE stock SET quantite="+qteStock+" WHERE stock.id="+id+" ";
                        pstUpdate = con.prepareStatement(stockUpdate);
                        pstUpdate.executeUpdate();
                        System.out.println("Enregistrer 6");
                        if (idSortie == 0) {
                            sortieInsert = " INSERT INTO sortie(produit, quantite) VALUES("+id+", "+total+") ";
                            pstInsert = con.prepareStatement(sortieInsert);
                            pstInsert.executeUpdate();
                            System.out.println("Enregistrer 7");
                        }
                        
                        else if (idSortie != 0) {
                            sortieUpdate = " UPDATE sortie SET quantite="+qteSortie+" WHERE sortie.produit="+id+" ";
                            pstUpdate = con.prepareStatement(sortieUpdate);
                            pstUpdate.executeUpdate();
                            System.out.println("Enregistrer 8");
                        }
                    }
                    
                    con.close();
                    rsStock.close();
                    rsSortie.close();
                    return 1;
                }
                
                if (qteStock == total) {
                    System.out.println("Enregistrer 9");
                    while (rsSortie.next()) {
                        idSortie = rsSortie.getInt(1);
                        qteSortie = rsSortie.getInt(3);
                        System.out.println("Enregistrer 10");
                        qteSortie = qteSortie + total;
                        stockDelete = " DELETE FROM stock WHERE stock.id="+id+" ";
                        pstDelete = con.prepareStatement(stockDelete);
                        pstDelete.executeUpdate();
                        System.out.println("Enregistrer 11");
                        if (idSortie == 0) {
                            sortieInsert = " INSERT INTO sortie(produit, quantite) VALUES("+id+", "+total+") ";
                            pstInsert = con.prepareStatement(sortieInsert);
                            pstInsert.executeUpdate();
                            System.out.println("Enregistrer 12");
                        }
                        
                        else if (idSortie != 0) {
                            stockUpdate = " UPDATE sortie SET quantite="+qteSortie+" WHERE sortie.produit="+id+" ";
                            pstUpdate = con.prepareStatement(stockUpdate);
                            pstUpdate.executeUpdate();
                            System.out.println("Enregistrer 13");
                        }
                    }
                    
                    con.close();
                    rsStock.close();
                    rsSortie.close();
                    return 1;
                    
                }
                
            }
            con.close();
            rsStock.close();
            rsSortie.close();
            System.out.println("Enregistrer 14");
            return 0;
            
        }   
        catch (SQLException | ClassNotFoundException e) {  
            System.out.println(e.getMessage());
            return 0;
        } 
    }
    
}