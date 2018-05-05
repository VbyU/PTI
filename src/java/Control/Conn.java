/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author User
 */
public class Conn {
      public static void main(String[] args) {
        DataBaseConnection conn = new DataBaseConnection();
        try {
            String query = "select * from CLIENT";
            Statement statement = conn.getConnection().createStatement();
            ResultSet result = statement.executeQuery(query);
            while (result.next()) {
                System.out.println("userName : " + result.getString("nama"));
                System.out.println("emailAddress : " + result.getString("email"));
            }
            statement.close();
        } catch (Exception ex) {
            System.out.println("message: " + ex.getMessage());
        }
       
    }
}

