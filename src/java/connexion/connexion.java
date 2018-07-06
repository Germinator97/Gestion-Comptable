/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;

/**
 *
 * @author germinator
 */
public class connexion {
    
    private final String url;
    private final String user;
    private final String driver;
    private final String pwd;
    
    public connexion() {
        this.url = "jdbc:mysql://localhost:3306/comptabilite";
        this.user = "root";
        this.driver = "com.mysql.jdbc.Driver";
        this.pwd = "";
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getDriver() {
        return driver;
    }

    public String getPwd() {
        return pwd;
    }
    
}
