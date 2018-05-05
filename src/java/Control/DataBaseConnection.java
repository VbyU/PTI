/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author basisb24sa
 */
public class DataBaseConnection {
    // Sesuaikan properti jdbcURL dengan basis data anda
//    private String jdbcURL = "jdbc:mysql://localhost:3306/web";
    private String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
    private String user = "hr";
    private String password = "hr";
    private Connection connection = null;
    /**
     * Creates a new instance of UserConnection
     */
    public DataBaseConnection() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(jdbcURL, user, password);
            System.out.println("koneksi berhasil");
        } catch (Exception ex) {
            System.out.println("message: gagal" + ex.getMessage());
        }
    }
    public boolean isConnected() {
        if (connection != null) {
            return true;
        } else {
            return false;
        }
    }
    public boolean getClosed() {
        if (isConnected()) {
            try {
                connection.close();
                connection = null;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            return true;
        } else {
            return false;
        }
    }

    public String getJdbcURL() {
        return jdbcURL;
    }

    public void setJdbcURL(String jdbcURL) {
        this.jdbcURL = jdbcURL;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConn(Connection connection) {
        this.connection = connection;
    }
}

