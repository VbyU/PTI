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
public class C_Paket {
    
     public static void setDaftarPaket() {
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;

        conn = Control.getConnection();
        try {
            st = conn.createStatement();
            rs = st.executeQuery("select * from paketwisata");
            while (rs.next()) {
                paketwisata paket = new paketwisata(rs.getString(2), rs.getString(3),rs.getInt(4),rs.getString(5));
                paket.addDaftarPaketWisata(paket);
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
        setDaftarPaket();
        for (int i = 0; i < paketwisata.getDaftarpaketWisata().size(); i++) {
            System.out.println(paketwisata.getDaftarpaketWisata().get(i).getNamaPaket());
            
        }
    }

    public static void simpanPaket(paketwisata paket) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        
        String id = paket.getIdPaket();
        String nama=paket.getNamaPaket();
        String deskripsi=paket.getDeskripsi();
        String jenis=paket.getJenisPaket();
        int harga=paket.getHarga();
        try {
            ps = conn.prepareStatement("insert into paketwisata(id_paket,jenispaket,namapaket,harga,deskripsi) values (?,?,?,?,?)");
            ps.setString(1, id);
            ps.setString(2, jenis);
            ps.setString(3, nama);
            ps.setInt(4, harga);
            ps.setString(5, deskripsi);
            ps.executeUpdate();
            conn.commit();
            paketwisata.addDaftarPaketWisata(paket);
            conn.commit();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
    }

    public static void updatePaket(paketwisata paket) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        String id = paket.getIdPaket();
        String nama=paket.getNamaPaket();
        String deskripsi=paket.getDeskripsi();
        String jenis=paket.getJenisPaket();
        int harga=paket.getHarga();
        try {
            ps = conn.prepareStatement("update paketwisata set jenispaket=?,namapaket=? ,harga=?,deskripsi=? where id_paket=?");
            ps.setString(1, jenis);
            ps.setString(2, nama);
            ps.setInt(3, harga);
            ps.setString(4, deskripsi);
            ps.setString(5, id);
            ps.executeUpdate();
            conn.commit();
            paket.clear();
            setDaftarPaket();
            conn.commit();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
    }

    public static void deletePaket(String id) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        try {
            ps = conn.prepareStatement("delete paketwisata where id_paket=?");
            ps.setString(1, id);
            ps.executeUpdate();
            conn.commit();
            paketwisata.clear();
            setDaftarPaket();
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

