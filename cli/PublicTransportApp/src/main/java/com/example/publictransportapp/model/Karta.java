package com.example.publictransportapp.model;

import java.util.Date;

public class Karta {
    private int id;
    private Date datumKupovine;
    private Date vaziDo;
    private Integer putnik; // Može biti null
    private int cena;

    // Default Constructor
    public Karta() {}

    // Parameterized Constructor
    public Karta(int id, Date datumKupovine, Date vaziDo, Integer putnik, int cena) {
        this.id = id;
        this.datumKupovine = datumKupovine;
        this.vaziDo = vaziDo;
        this.putnik = putnik;
        this.cena = cena;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDatumKupovine() {
        return datumKupovine;
    }

    public void setDatumKupovine(Date datumKupovine) {
        this.datumKupovine = datumKupovine;
    }

    public Date getVaziDo() {
        return vaziDo;
    }

    public void setVaziDo(Date vaziDo) {
        this.vaziDo = vaziDo;
    }

    public Integer getPutnik() {
        return putnik;
    }

    public void setPutnik(Integer putnik) {
        this.putnik = putnik;
    }

    public int getCena() {
        return cena;
    }

    public void setCena(int cena) {
        this.cena = cena;
    }

    @Override
    public String toString() {
        return "Karta{" +
                "id=" + id +
                ", datumKupovine=" + datumKupovine +
                ", vaziDo=" + vaziDo +
                ", putnik=" + putnik +
                ", cena=" + cena +
                '}';
    }
}

