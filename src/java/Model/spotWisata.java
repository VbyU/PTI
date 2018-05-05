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
public class spotWisata {
    private String idSpot;
    private String namaSpot;
    private String deskripsi;
    private static ArrayList<spotWisata>daftarspotWisata=new ArrayList<>();

    public spotWisata() {
    }

    public spotWisata(String namaSpot, String deskripsi) {
        this.namaSpot = namaSpot;
        this.deskripsi = deskripsi;
    }

    public spotWisata(String idSpot, String namaSpot, String deskripsi) {
        this.idSpot = idSpot;
        this.namaSpot = namaSpot;
        this.deskripsi = deskripsi;
    }

    public String getIdSpot() {
        return idSpot;
    }

    public void setIdSpot(String idSpot) {
        this.idSpot = idSpot;
    }

    public String getNamaSpot() {
        return namaSpot;
    }

    public void setNamaSpot(String namaSpot) {
        this.namaSpot = namaSpot;
    }

    public String getDeskripsi() {
        return deskripsi;
    }

    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }

    public static ArrayList<spotWisata> getDaftarspotWisata() {
        return daftarspotWisata;
    }

    public static void setDaftarspotWisata(ArrayList<spotWisata> daftarspotWisata) {
        spotWisata.daftarspotWisata = daftarspotWisata;
    }
    
     public static void addDaftarspotWisata(spotWisata data){
        daftarspotWisata.add(data);
    }
    public static void clear(){
        daftarspotWisata.clear();
    }
    
}
