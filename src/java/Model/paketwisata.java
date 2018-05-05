/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author GHOSTMAN
 */
public class paketwisata {
    private String idPaket;
    private String jenisPaket;
    private String namaPaket;
    private int harga;
    private String deskripsi;
    private static ArrayList<paketwisata>daftarpaketWisata=new ArrayList<>();
    
    public paketwisata() {
    }

    public paketwisata(String jenisPaket, String namaPaket, int harga, String deskripsi) {
        this.jenisPaket = jenisPaket;
        this.namaPaket = namaPaket;
        this.harga = harga;
        this.deskripsi = deskripsi;
    }

    public paketwisata(String idPaket, String jenisPaket, String namaPaket, int harga, String deskripsi) {
        this.idPaket = idPaket;
        this.jenisPaket = jenisPaket;
        this.namaPaket = namaPaket;
        this.harga = harga;
        this.deskripsi = deskripsi;
    }

    public String getIdPaket() {
        return idPaket;
    }

    public void setIdPaket(String idPaket) {
        this.idPaket = idPaket;
    }

    public String getJenisPaket() {
        return jenisPaket;
    }

    public void setJenisPaket(String jenisPaket) {
        this.jenisPaket = jenisPaket;
    }

    public String getNamaPaket() {
        return namaPaket;
    }

    public void setNamaPaket(String namaPaket) {
        this.namaPaket = namaPaket;
    }

    public int getHarga() {
        return harga;
    }

    public void setHarga(int harga) {
        this.harga = harga;
    }

    public String getDeskripsi() {
        return deskripsi;
    }

    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }

    public static ArrayList<paketwisata> getDaftarpaketWisata() {
        return daftarpaketWisata;
    }

    public static void setDaftarpaketWisata(ArrayList<paketwisata> daftarpaketWisata) {
        paketwisata.daftarpaketWisata = daftarpaketWisata;
    }
    public static void addDaftarPaketWisata(paketwisata data){
        daftarpaketWisata.add(data);
    }
    public static void clear(){
        daftarpaketWisata.clear();
    }
    
    
}
