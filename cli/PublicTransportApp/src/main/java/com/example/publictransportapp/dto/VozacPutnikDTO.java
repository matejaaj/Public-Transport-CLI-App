package com.example.publictransportapp.dto;

public class VozacPutnikDTO {
    private String imeVozaca;
    private String prezimeVozaca;
    private String imePutnika;
    private String prezimePutnika;
    private int brojVoznji;

    public VozacPutnikDTO(String imeVozaca, String prezimeVozaca, String imePutnika, String prezimePutnika, int brojVoznji) {
        this.imeVozaca = imeVozaca;
        this.prezimeVozaca = prezimeVozaca;
        this.imePutnika = imePutnika;
        this.prezimePutnika = prezimePutnika;
        this.brojVoznji = brojVoznji;
    }

    // Getteri
    public String getImeVozaca() {
        return imeVozaca;
    }

    public String getPrezimeVozaca() {
        return prezimeVozaca;
    }

    public String getImePutnika() {
        return imePutnika;
    }

    public String getPrezimePutnika() {
        return prezimePutnika;
    }

    public int getBrojVoznji() {
        return brojVoznji;
    }

    // Setteri
    public void setImeVozaca(String imeVozaca) {
        this.imeVozaca = imeVozaca;
    }

    public void setPrezimeVozaca(String prezimeVozaca) {
        this.prezimeVozaca = prezimeVozaca;
    }

    public void setImePutnika(String imePutnika) {
        this.imePutnika = imePutnika;
    }

    public void setPrezimePutnika(String prezimePutnika) {
        this.prezimePutnika = prezimePutnika;
    }

    public void setBrojVoznji(int brojVoznji) {
        this.brojVoznji = brojVoznji;
    }

    @Override
    public String toString() {
        return "VozacPutnikDTO{" +
                "imeVozaca='" + imeVozaca + '\'' +
                ", prezimeVozaca='" + prezimeVozaca + '\'' +
                ", imePutnika='" + imePutnika + '\'' +
                ", prezimePutnika='" + prezimePutnika + '\'' +
                ", brojVoznji=" + brojVoznji +
                '}';
    }
}
