package com.example.publictransportapp.connection;

import java.sql.Connection;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class ConnectionUtil_HikariCP {
    private static HikariConfig hikariConfig = new HikariConfig();
    private static HikariDataSource hikariDS;


    static {
        hikariConfig.setJdbcUrl(ConnectionParams.LOCAL_CONNECTION_STRING);
        hikariConfig.setUsername(ConnectionParams.USERNAME);
        hikariConfig.setPassword(ConnectionParams.PASSWORD);
        hikariConfig.setMaximumPoolSize(5);  // Postavi maksimalan broj konekcija u pool-u
        hikariConfig.addDataSourceProperty("cachePrepStmts", "false");  // Omogući cache za prepared statements
        hikariConfig.addDataSourceProperty("prepStmtCacheSize", "250");  // Broj keširanih statements
        hikariConfig.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");  // Maksimalna dužina SQL-a za keširanje
        hikariConfig.setDriverClassName(ConnectionParams.DRIVER);  // Dodaj driver klasu

        hikariDS = new HikariDataSource(hikariConfig);
    }

    private ConnectionUtil_HikariCP() {
    }

    public static Connection getConnection() throws SQLException {
        return hikariDS.getConnection();  // Vraća konekciju iz pool-a
    }

    public static void closeDataSource() {
        hikariDS.close();  // Zatvara data source kada je aplikacija gotova
    }

    @Override
    protected void finalize() throws Throwable {
        closeDataSource();  // Obavezno zatvori pool pri uklanjanju objekta
        super.finalize();
    }
}