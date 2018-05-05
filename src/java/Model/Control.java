package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Control {
    public static Connection getConnection(){
        String 
//               host = "172.23.9.185",
//               port = "1521",
//               db   = "orcl",
//               usr  = "MHS155314085",
//               pwd  = "ASPIRE4738Z"
//                
               host = "localhost",
               port = "1521",
               db   = "xe",
               usr  = "aaaa",
               pwd  = "aaaa"
               ;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException ex){
            JOptionPane.showMessageDialog(null, "Maaf driver class tidak ditemukan\nError : "+ex.getMessage(), "Error", 0);
        }
        
        Connection conn = null;
        try{
            conn = DriverManager.getConnection("jdbc:oracle:thin:@"+host+":"+port+":"+db, usr, pwd);
        } catch (SQLException ex){
            JOptionPane.showMessageDialog(null, "Maaf, koneksi tidak berhasil\nError : "+ex.getMessage(), "Error", 0);
        }
        return conn;
    }
    public static void main(String[] args) {
        getConnection();
    }
}
