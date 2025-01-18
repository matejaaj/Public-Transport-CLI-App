package com.example.publictransportapp.dto;

public class PutnikCekiranjaDTO {
    private String ime;
    private String prezime;
    private int brojCekiranja;

    public PutnikCekiranjaDTO(String ime, String prezime, int brojCekiranja) {
        this.ime = ime;
        this.prezime = prezime;
        this.brojCekiranja = brojCekiranja;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public int getBrojCekiranja() {
        return brojCekiranja;
    }

    public void setBrojCekiranja(int brojCekiranja) {
        this.brojCekiranja = brojCekiranja;
    }

    @Override
    public String toString() {
        return "PutnikCekiranjaDTO{" +
                "ime='" + ime + '\'' +
                ", prezime='" + prezime + '\'' +
                ", brojCekiranja=" + brojCekiranja +
                '}';
    }
}

