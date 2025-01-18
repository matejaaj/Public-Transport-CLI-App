package com.example.publictransportapp.model;

public class Putnik {
    private int id;
    private String ime;
    private String prz;
    private String brTel;
    private String mail;

    // Default Constructor
    public Putnik() {}

    // Parameterized Constructor
    public Putnik(int id, String ime, String prz, String brTel, String mail) {
        this.id = id;
        this.ime = ime;
        this.prz = prz;
        this.brTel = brTel;
        this.mail = mail;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrz() {
        return prz;
    }

    public void setPrz(String prz) {
        this.prz = prz;
    }

    public String getBrTel() {
        return brTel;
    }

    public void setBrTel(String brTel) {
        this.brTel = brTel;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Override
    public String toString() {
        return "Putnik{" +
                "idPut=" + id +
                ", Ime='" + ime + '\'' +
                ", Prezime='" + prz + '\'' +
                ", Broj telefona='" + brTel + '\'' +
                ", Email='" + mail + '\'' +
                '}';
    }
}
