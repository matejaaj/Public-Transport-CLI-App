package com.example.publictransportapp.model;


public class Stanica {
    private int id;
    private String naziv;

    public Stanica(int id, String naziv) {
        this.id = id;
        this.naziv = naziv;
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

    @Override
    public String toString() {
        return "Stanica{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                '}';
    }
}

