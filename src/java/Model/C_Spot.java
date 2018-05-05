/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

/**
 *
 * @author GHOSTMAN
 */
public class C_Spot {
    
     public static void setDaftarSpot() {
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;

        conn = Control.getConnection();
        try {
            st = conn.createStatement();
            rs = st.executeQuery("select * from spotwisata");
            while (rs.next()) {
                spotWisata spot = new spotWisata(rs.getString(1),rs.getString(2), rs.getString(3));
                spot.addDaftarspotWisata(spot);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                st.close();
                conn.close();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
    }
    public static void main(String[] args) {
        setDaftarSpot();
        for (int i = 0; i < spotWisata.getDaftarspotWisata().size(); i++) {
            System.out.println(spotWisata.getDaftarspotWisata().get(i).getNamaSpot());
            
        }
    }

    public static void simpanSpot(spotWisata spot) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        
        String id = spot.getIdSpot();
        String nama=spot.getNamaSpot();
        String deskripsi=spot.getDeskripsi();
        try {
            ps = conn.prepareStatement("insert into spotwisata(id_spot,namaspot,deskripsi) values (?,?,?)");
            ps.setString(1, id);
            ps.setString(2, nama);
            ps.setString(3, deskripsi);
            ps.executeUpdate();
            conn.commit();
            spotWisata.addDaftarspotWisata(spot);
            conn.commit();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
    }

    public static void updateSpot(spotWisata spot) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        String id = spot.getIdSpot();
        String nama=spot.getNamaSpot();
        String deskripsi=spot.getDeskripsi();
        try {
            ps = conn.prepareStatement("update spotwisata set namaspot=?,deskripsi=? where id_spot=?");
            ps.setString(1, nama);
            ps.setString(2, deskripsi);
            ps.setString(3, id);
            ps.executeUpdate();
            conn.commit();
            spot.clear();
            setDaftarSpot();
            conn.commit();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
    }

    public static void deleteSpot(String id) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        try {
            ps = conn.prepareStatement("delete spotwisata where id_spot=?");
            ps.setString(1, id);
            ps.executeUpdate();
            conn.commit();
            spotWisata.clear();
            setDaftarSpot();
            conn.commit();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
    }

    public static String random() {
        String a = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        String s = "";
        Random random = new Random();
        int length = 8;
        for (int i = 0; i < length; i++) {
            char c = a.charAt(random.nextInt(62));
            s += c;

        }
        return s;
    }
}
