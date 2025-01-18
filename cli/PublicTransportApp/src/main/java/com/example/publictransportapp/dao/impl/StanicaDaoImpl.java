package com.example.publictransportapp.dao.impl;


import com.example.publictransportapp.connection.ConnectionUtil_HikariCP;
import com.example.publictransportapp.dao.StanicaDao;
import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.model.Stanica;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StanicaDaoImpl implements StanicaDao {

    public List<Stanica> getAllStanice() throws SQLException {
        String query = "SELECT idstan, nazstan FROM stanica";
        List<Stanica> stanice = new ArrayList<>();

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                stanice.add(new Stanica(rs.getInt("idstan"), rs.getString("nazstan")));
            }
        }
        return stanice;
    }

    public List<Linija> getLinijeByStanicaId(int stanicaId) throws SQLException {
        String query = """
                SELECT l.idlin, l.nazlin
                FROM sadrzi s
                JOIN linija l ON s.idlin = l.idlin
                WHERE s.idstan = ?
                """;
        List<Linija> linije = new ArrayList<>();

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            stmt.setInt(1, stanicaId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    linije.add(new Linija(rs.getInt("idlin"), rs.getString("nazlin")));
                }
            }
        }
        return linije;
    }

    public boolean deleteStanicaAndSadrzi(int stanicaId) throws SQLException {
        String deleteSadrziQuery = "DELETE FROM sadrzi WHERE idstan = ?";
        String deleteStanicaQuery = "DELETE FROM stanica WHERE idstan = ?";

        try (Connection connection = ConnectionUtil_HikariCP.getConnection()) {
            connection.setAutoCommit(false);

            try (PreparedStatement deleteSadrziStmt = connection.prepareStatement(deleteSadrziQuery);
                 PreparedStatement deleteStanicaStmt = connection.prepareStatement(deleteStanicaQuery)) {

                // Brisanje iz sadrzi
                deleteSadrziStmt.setInt(1, stanicaId);
                deleteSadrziStmt.executeUpdate();

                // Brisanje stanice
                deleteStanicaStmt.setInt(1, stanicaId);
                deleteStanicaStmt.executeUpdate();

                connection.commit();
                return true;

            } catch (SQLException e) {
                connection.rollback();
                throw e;
            }
        }
    }
}

