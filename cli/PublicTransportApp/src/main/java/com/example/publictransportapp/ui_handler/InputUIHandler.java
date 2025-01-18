package com.example.publictransportapp.ui_handler;

import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.model.Stanica;
import com.example.publictransportapp.service.StanicaService;

import java.sql.SQLException;
import java.util.List;

public class InputUIHandler {

    private final StanicaService stanicaService;

    public InputUIHandler() {
        this.stanicaService = new StanicaService(new com.example.publictransportapp.dao.impl.StanicaDaoImpl());
    }

    public void handleStanicaDeletion() {
        try {
            // Prikaz svih stanica
            List<Stanica> stanice = stanicaService.getAllStanice();
            System.out.println("Dostupne stanice:");
            System.out.println("=================");
            System.out.printf("%-10s %-30s%n", "ID", "Naziv stanice");
            System.out.println("-------------------------------");

            for (Stanica stanica : stanice) {
                System.out.printf("%-10d %-30s%n", stanica.getId(), stanica.getNaziv());
            }

            System.out.print("\nUnesite ID stanice za brisanje: ");
            int stanicaId = MainUIHandler.sc.nextInt();
            MainUIHandler.sc.nextLine(); // Očistiti newline karakter

            // Provera linija povezanih sa stanicom
            List<Linija> linije = stanicaService.getLinijeByStanicaId(stanicaId);
            System.out.println("\nLinije koje sadrže stanicu:");
            System.out.println("============================");
            System.out.printf("%-10s %-30s%n", "ID linije", "Naziv linije");
            System.out.println("-------------------------------");

            for (Linija linija : linije) {
                System.out.printf("%-10d %-30s%n", linija.getId(), linija.getNaziv());
            }

            // Potvrda brisanja
            System.out.print("\nDa li ste sigurni da želite da izbrišete ovu stanicu i sve njene veze? (da/ne): ");
            String potvrda = MainUIHandler.sc.nextLine();

            if (potvrda.equalsIgnoreCase("da")) {
                boolean success = stanicaService.deleteStanicaAndSadrzi(stanicaId);
                if (success) {
                    System.out.println("Stanica i sve njene veze su uspešno obrisane.");
                } else {
                    System.out.println("Došlo je do greške prilikom brisanja.");
                }
            } else {
                System.out.println("Brisanje je otkazano.");
            }
        } catch (SQLException e) {
            System.err.println("Greška pri izvršavanju operacije, ukoliko je stanica pocetna ili krajnja za neku liniju ona ne moze biti obrisana.");
        }
    }
}
