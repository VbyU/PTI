/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.sql.Date;
//import java.sql.Date;

/**
 *
 * @author GHOSTMAN
 */
public class pemesanan {
    private String idPesanan;
    private String idPaket;
    private String nama;
    private int jumlah;
    private Date tanggalPesan;
    private String noTelepon;
    private String email;
    private int totalBayar;
    private static ArrayList<pemesanan>daftarPemesanan=new ArrayList<>();
    
    public pemesanan() {
    }

    public pemesanan(String idPesanan, String idPaket, String nama, int jumlah, Date tanggalPesan, String noTelepon, String email, int totalBayar) {
        this.idPesanan = idPesanan;
        this.idPaket = idPaket;
        this.nama = nama;
        this.jumlah = jumlah;
        this.tanggalPesan = tanggalPesan;
        this.noTelepon = noTelepon;
        this.email = email;
        this.totalBayar = totalBayar;
    }

    public String getIdPesanan() {
        return idPesanan;
    }

    public void setIdPesanan(String idPesanan) {
        this.idPesanan = idPesanan;
    }

    public String getIdPaket() {
        return idPaket;
    }

    public void setIdPaket(String idPaket) {
        this.idPaket = idPaket;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getJumlah() {
        return jumlah;
    }

    public void setJumlah(int jumlah) {
        this.jumlah = jumlah;
    }

    public Date getTanggalPesan() {
        return tanggalPesan;
    }

    public void setTanggalPesan(Date tanggalPesan) {
        this.tanggalPesan = tanggalPesan;
    }

    public String getNoTelepon() {
        return noTelepon;
    }

    public void setNoTelepon(String noTelepon) {
        this.noTelepon = noTelepon;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTotalBayar() {
        return totalBayar;
    }

    public void setTotalBayar(int totalBayar) {
        this.totalBayar = totalBayar;
    }

    public static ArrayList<pemesanan> getDaftarPemesanan() {
        return daftarPemesanan;
    }

    public static void setDaftarPemesanan(ArrayList<pemesanan> daftarPemesanan) {
        pemesanan.daftarPemesanan = daftarPemesanan;
    }
    
     public static void addDaftarPemesanan(pemesanan data){
        daftarPemesanan.add(data);
    }
    public static void clear(){
        daftarPemesanan.clear();
    }
    
}
