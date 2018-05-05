/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

/**
 *
 * @author GHOSTMAN
 */
public class C_PesanPaket {
    
     public static void setDaftarPemesanan() {
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;

        conn = Control.getConnection();
        try {
            st = conn.createStatement();
            rs = st.executeQuery("select * from pamesanan");
            while (rs.next()) {
                pemesanan pesan=new pemesanan(
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getInt(4),
                rs.getDate(5),
                rs.getString(6),
                rs.getString(7),
                rs.getInt(8)
                );
               pesan.addDaftarPemesanan(pesan);
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
//    public static void main(String[] args) {
//        setDaftarSpot();
//        for (int i = 0; i < spotWisata.getDaftarspotWisata().size(); i++) {
//            System.out.println(spotWisata.getDaftarspotWisata().get(i).getNamaSpot());
//            
//        }
//    }

    public static void simpanPemesanan(pemesanan pesan) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        
        String idPemesanan=pesan.getIdPesanan();
        String idPaket=pesan.getIdPaket();
        String nama=pesan.getNama();
        int jumlah=pesan.getJumlah();
        Date tanggal=pesan.getTanggalPesan();
        String telepon=pesan.getNoTelepon();
        String email=pesan.getEmail();
        int total=pesan.getTotalBayar();
        
        try {
            ps = conn.prepareStatement("insert into pemesanan values (?,?,?,?,?,?,?,?)");
            ps.setString(1, idPemesanan);
            ps.setString(2, idPaket);
            ps.setString(3, nama);
            ps.setInt(4, jumlah);
            ps.setDate(5, tanggal);
            ps.setString(6, telepon);
            ps.setString(7,email);
            ps.setInt(8,total);
            ps.executeUpdate();
            conn.commit();
            pemesanan.addDaftarPemesanan(pesan);
            conn.commit();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
    }

//    public static void updateSpot(spotWisata spot) {
//        Connection conn = null;
//        PreparedStatement ps = null;
//        conn = Control.getConnection();
//        String id = spot.getIdSpot();
//        String nama=spot.getNamaSpot();
//        String deskripsi=spot.getDeskripsi();
//        try {
//            ps = conn.prepareStatement("update spotwisata set namaspot=?,deskripsi=? where id_spot=?");
//            ps.setString(1, nama);
//            ps.setString(2, deskripsi);
//            ps.setString(3, id);
//            ps.executeUpdate();
//            conn.commit();
//            spot.clear();
//            setDaftarSpot();
//            conn.commit();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//
//        }
//    }

    public static void deleteSpot(String id) {
        Connection conn = null;
        PreparedStatement ps = null;
        conn = Control.getConnection();
        try {
            ps = conn.prepareStatement("delete pemesanan where id_pemesanan=?");
            ps.setString(1, id);
            ps.executeUpdate();
            conn.commit();
            spotWisata.clear();
            setDaftarPemesanan();
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

