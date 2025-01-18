package com.example.publictransportapp.ui_handler;

import java.util.Scanner;

public class MainUIHandler {

    public static Scanner sc = new Scanner(System.in);

    private final ReportUIHandler reportUIHandler = new ReportUIHandler();
    private final InputUIHandler inputUIHandler = new InputUIHandler();

    public void handleMainMenu() {

        String answer;
        do {
            System.out.println("\nOdaberite opciju:");
            System.out.println("1 - Prikaz broja čekiranja po putnicima");
            System.out.println("2 - Prikaz ulazaka po linijama.");
            System.out.println("3 - Prikaz ulazaka na stanicama");
            System.out.println("4 - Dodatno: Prikaz Vozac - putnik parova. ");
            System.out.println("5 - Izbrisi stanicu");
            System.out.println("X - Izlazak iz programa");

            answer = sc.nextLine();

            switch (answer) {
                case "1":
                    reportUIHandler.showBrojCekiranjaPoPutnicima();
                    break;
                case "2":
                    reportUIHandler.showBrojCekiranjaPoLinijama();
                    break;
                case "3":
                    reportUIHandler.showProsekCekiranjaPoStanici();
                    break;
                case "4":
                    reportUIHandler.showVozacPutnikPar();
                    break;
                case "5":
                    inputUIHandler.handleStanicaDeletion();
                    break;
            }

        } while (!answer.equalsIgnoreCase("X"));

        sc.close();
    }
}
