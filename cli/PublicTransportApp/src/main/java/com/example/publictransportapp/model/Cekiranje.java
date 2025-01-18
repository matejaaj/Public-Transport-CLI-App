package com.example.publictransportapp.model;

public class Cekiranje {
    private int dolazak;
    private int karta;

    // Default Constructor
    public Cekiranje() {}

    // Parameterized Constructor
    public Cekiranje(int dolazak, int karta) {
        this.dolazak = dolazak;
        this.karta = karta;
    }

    // Getters and Setters
    public int getDolazak() {
        return dolazak;
    }

    public void setDolazak(int dolazak) {
        this.dolazak = dolazak;
    }

    public int getKarta() {
        return karta;
    }

    public void setKarta(int karta) {
        this.karta = karta;
    }

    @Override
    public String toString() {
        return "Cekiranje{" +
                "dolazak=" + dolazak +
                ", karta=" + karta +
                '}';
    }
}

