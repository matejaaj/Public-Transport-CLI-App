package com.example.publictransportapp.model;

public class Linija {
    private int id;
    private String naziv;
    private int brojCekiranja;

    public Linija(int id, String naziv) {
        this.id = id;
        this.naziv = naziv;
    }

    public Linija(int id, String naziv, int brojCekiranja) {
        this.id = id;
        this.naziv = naziv;
        this.brojCekiranja = brojCekiranja;
    }

    // Getteri i setteri
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public int getBrojCekiranja() {
        return brojCekiranja;
    }

    public void setBrojCekiranja(int brojCekiranja) {
        this.brojCekiranja = brojCekiranja;
    }

    @Override
    public String toString() {
        return "LinijaDTO{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                ", brojCekiranja=" + brojCekiranja +
                '}';
    }
}
