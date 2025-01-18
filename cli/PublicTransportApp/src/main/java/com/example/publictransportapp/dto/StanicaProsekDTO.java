package com.example.publictransportapp.dto;

public class StanicaProsekDTO {
    private int stanicaId;
    private String nazivStanice;
    private int prosecanBrojCekiranja;

    public StanicaProsekDTO(int stanicaId, String nazivStanice, int prosecanBrojCekiranja) {
        this.stanicaId = stanicaId;
        this.nazivStanice = nazivStanice;
        this.prosecanBrojCekiranja = prosecanBrojCekiranja;
    }

    // Getteri
    public int getStanicaId() {
        return stanicaId;
    }

    public String getNazivStanice() {
        return nazivStanice;
    }

    public int getProsecanBrojCekiranja() {
        return prosecanBrojCekiranja;
    }

    // Setteri
    public void setStanicaId(int stanicaId) {
        this.stanicaId = stanicaId;
    }

    public void setNazivStanice(String nazivStanice) {
        this.nazivStanice = nazivStanice;
    }

    public void setProsecanBrojCekiranja(int prosecanBrojCekiranja) {
        this.prosecanBrojCekiranja = prosecanBrojCekiranja;
    }

    @Override
    public String toString() {
        return "StanicaProsekDTO{" +
                "stanicaId=" + stanicaId +
                ", nazivStanice='" + nazivStanice + '\'' +
                ", prosecanBrojCekiranja=" + prosecanBrojCekiranja +
                '}';
    }
}
