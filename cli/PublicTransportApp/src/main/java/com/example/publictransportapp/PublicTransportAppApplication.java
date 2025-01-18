package com.example.publictransportapp;

import com.example.publictransportapp.connection.ConnectionUtil_HikariCP;
import com.example.publictransportapp.ui_handler.MainUIHandler;


import java.sql.*;


public class PublicTransportAppApplication {

    public static void main(String[] args) {

        // Postavi log nivo za aplikaciju
        System.setProperty(org.slf4j.impl.SimpleLogger.DEFAULT_LOG_LEVEL_KEY, "WARN");

        MainUIHandler mainUIHandler = new MainUIHandler();
        try {
            // Pokreni glavni meni
            mainUIHandler.handleMainMenu();
        } catch (Exception e) {
            System.err.println("Došlo je do greške: " + e.getMessage());
        } finally {
            // Zatvori konekcije
            ConnectionUtil_HikariCP.closeDataSource();
        }
    }


}
