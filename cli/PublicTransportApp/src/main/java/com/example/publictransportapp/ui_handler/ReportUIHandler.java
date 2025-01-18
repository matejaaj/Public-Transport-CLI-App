package com.example.publictransportapp.ui_handler;

import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.dto.PutnikCekiranjaDTO;
import com.example.publictransportapp.dto.StanicaProsekDTO;
import com.example.publictransportapp.dto.VozacPutnikDTO;
import com.example.publictransportapp.service.LinijaService;
import com.example.publictransportapp.service.PutnikService;
import com.example.publictransportapp.service.RadnikService;

import java.sql.SQLException;
import java.util.List;

public class ReportUIHandler {

    private final PutnikService putnikService;
    private final RadnikService radnikService;
    private final LinijaService linijaService;

    public ReportUIHandler() {
        this.putnikService = new PutnikService(new com.example.publictransportapp.dao.impl.PutnikDaoImpl());
        this.radnikService = new RadnikService(new com.example.publictransportapp.dao.impl.RadnikDaoImpl());
        this.linijaService = new LinijaService(new com.example.publictransportapp.dao.impl.LinijaDaoImpl());
    }


    public void showBrojCekiranjaPoPutnicima() {
        try {
            List<PutnikCekiranjaDTO> rezultati = putnikService.getBrojCekiranjaPutnika();

            // Header
            System.out.println("\nPrikaz broja čekiranja po putnicima:");
            System.out.println("======================================");
            System.out.printf("%-20s %-20s %-15s%n", "Ime", "Prezime", "Broj čekiranja");
            System.out.println("-----------------------------------------------------------");

            // Rows
            for (PutnikCekiranjaDTO rezultat : rezultati) {
                System.out.printf("%-20s %-20s %-15d%n",
                        rezultat.getIme(),
                        rezultat.getPrezime(),
                        rezultat.getBrojCekiranja());
            }

        } catch (SQLException e) {
            System.err.println("Greška pri izvršavanju upita: " + e.getMessage());
        }
    }


    public void showVozacPutnikPar() {
        try {
            List<VozacPutnikDTO> results = radnikService.getTopDriverPassengerPairs();


            System.out.println("\nTop 3 para vozač-putnik:");
            System.out.println("============================================================");
            System.out.printf("%-20s %-20s %-20s %-20s %-10s%n",
                    "Vozač (ime)", "Vozač (prezime)", "Putnik (ime)", "Putnik (prezime)", "Broj vožnji");
            System.out.println("------------------------------------------------------------");

            for (VozacPutnikDTO result : results) {
                System.out.printf("%-20s %-20s %-20s %-20s %-10d%n",
                        result.getImeVozaca(),
                        result.getPrezimeVozaca(),
                        result.getImePutnika(),
                        result.getPrezimePutnika(),
                        result.getBrojVoznji());
            }

        } catch (SQLException e) {
            System.err.println("Greška pri dobijanju izveštaja: " + e.getMessage());
        }

    }

    public void showBrojCekiranjaPoLinijama() {
        try {
            System.out.print("\nUnesite mesec (numerički, 1-12): ");
            int mesec = MainUIHandler.sc.nextInt();
            MainUIHandler.sc.nextLine();

            List<Linija> rezultati = linijaService.getCheckinsByLineAndMonth(mesec);

            System.out.println("\nRangiranje linija po broju čekiranja za mesec: " + mesec);
            System.out.println("=========================================================");
            System.out.printf("%-10s %-50s %-15s%n", "Linija ID", "Naziv linije", "Broj čekiranja");
            System.out.println("---------------------------------------------------------------------------------------");

            for (Linija rezultat : rezultati) {
                System.out.printf("%-10d %-50s %-15d%n",
                        rezultat.getId(),
                        rezultat.getNaziv(),
                        rezultat.getBrojCekiranja());
            }
        } catch (SQLException e) {
            System.err.println("Greška pri dohvatanju rangiranja linija: " + e.getMessage());
        }
    }




    public void showProsekCekiranjaPoStanici() {
        try {
            // Prikaz svih linija
            List<Linija> linije = linijaService.getAllLines();
            System.out.println("\nPrikaz svih linija:");
            System.out.println("===============================================");
            System.out.printf("%-10s %-30s%n", "ID linije", "Naziv linije");
            System.out.println("------------------------------------------------");

            for (Linija linija : linije) {
                System.out.printf("%-10d %-30s%n",
                        linija.getId(),
                        linija.getNaziv());
            }


            System.out.print("\nUnesite ID linije: ");
            int linijaId = MainUIHandler.sc.nextInt();
            MainUIHandler.sc.nextLine();

            // Prosečan broj čekiranja po stanici za odabranu liniju
            List<StanicaProsekDTO> rezultati = linijaService.getAvgCheckinsByStation(linijaId);
            System.out.println("\nProsečan broj čekiranja po stanici za liniju " + linijaId + ":");
            System.out.println("=========================================================");
            System.out.printf("%-10s %-30s %-10s%n", "Stanica ID", "Naziv stanice", "Prosečan broj čekiranja");
            System.out.println("---------------------------------------------------------");

            for (StanicaProsekDTO rezultat : rezultati) {
                System.out.printf("%-10d %-30s %-10d%n",
                        rezultat.getStanicaId(),
                        rezultat.getNazivStanice(),
                        rezultat.getProsecanBrojCekiranja());
            }

        } catch (SQLException e) {
            System.err.println("Greška pri izvršavanju upita: " + e.getMessage());
        } finally {
            return;
        }
    }


}
