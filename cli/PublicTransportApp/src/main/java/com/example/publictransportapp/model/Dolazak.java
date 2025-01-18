package com.example.publictransportapp.model;

import java.util.Date;

public class Dolazak {
    private int id;
    private Date datumDolazka;
    private int stanica;
    private int autobus;

    // Default Constructor
    public Dolazak() {}

    // Parameterized Constructor
    public Dolazak(int id, Date datumDolazka, int stanica, int autobus) {
        this.id = id;
        this.datumDolazka = datumDolazka;
        this.stanica = stanica;
        this.autobus = autobus;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDatumDolazka() {
        return datumDolazka;
    }

    public void setDatumDolazka(Date datumDolazka) {
        this.datumDolazka = datumDolazka;
    }

    public int getStanica() {
        return stanica;
    }

    public void setStanica(int stanica) {
        this.stanica = stanica;
    }

    public int getAutobus() {
        return autobus;
    }

    public void setAutobus(int autobus) {
        this.autobus = autobus;
    }

    @Override
    public String toString() {
        return "Dolazak{" +
                "id=" + id +
                ", datumDolazka=" + datumDolazka +
                ", stanica=" + stanica +
                ", autobus=" + autobus +
                '}';
    }
}
