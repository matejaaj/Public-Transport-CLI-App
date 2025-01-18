package com.example.publictransportapp.dao.impl;

import com.example.publictransportapp.connection.ConnectionUtil_HikariCP;
import com.example.publictransportapp.dao.LinijaDao;
import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.dto.StanicaProsekDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LinijaDaoImpl implements LinijaDao {
    public List<Linija> getAllLines() throws SQLException {
        String query = "SELECT idlin, nazlin FROM linija";

        List<Linija> linije = new ArrayList<>();

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                linije.add(new Linija(rs.getInt("idlin"), rs.getString("nazlin")));
            }
        }

        return linije;
    }


    public List<StanicaProsekDTO> getAvgCheckinsByStation(int linijaId) throws SQLException {
        String query = """
                SELECT 
                    s.idstan AS stanica_id,
                    s.nazstan AS naziv_stanice,
                    CEIL(AVG(sc.broj_cekiranja)) AS prosecan_broj_cekiranja
                FROM 
                    dolazak d
                JOIN 
                    detalji_povere_autobusa dpa ON d.idaut = dpa.idaut
                JOIN 
                    detalji_povere_linije dpl ON dpa.idrad = dpl.idrad 
                    AND d.datdolaz BETWEEN dpl.datlinod AND dpl.datlindo
                JOIN 
                    sadrzi sa ON dpl.idlin = sa.idlin AND d.idstan = sa.idstan
                JOIN 
                    stanica s ON sa.idstan = s.idstan
                LEFT JOIN 
                    (
                        SELECT iddolaz, COUNT(*) AS broj_cekiranja
                        FROM se_cekira
                        GROUP BY iddolaz
                    ) sc ON d.iddolaz = sc.iddolaz
                WHERE 
                    dpl.idlin = ?
                GROUP BY 
                    s.idstan, s.nazstan
                ORDER BY 
                    s.nazstan
                """;

        List<StanicaProsekDTO> rezultati = new ArrayList<>();

        try (   Connection connection = ConnectionUtil_HikariCP.getConnection();
                PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, linijaId);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rezultati.add(new StanicaProsekDTO(
                            rs.getInt("stanica_id"),
                            rs.getString("naziv_stanice"),
                            rs.getInt("prosecan_broj_cekiranja")
                    ));
                }
            }
        }

        return rezultati;
    }


    public List<Linija> getCheckinsByLineAndMonth(int mesec) throws SQLException {
        String query = """
            SELECT 
                l.idlin AS linija_id,
                l.nazlin AS naziv_linije,
                COUNT(sc.idkar) AS broj_cekiranja
            FROM 
                se_cekira sc
            JOIN 
                dolazak d ON sc.iddolaz = d.iddolaz
            JOIN 
                detalji_povere_autobusa dpa ON d.idaut = dpa.idaut
            JOIN 
                detalji_povere_linije dpl ON dpa.idrad = dpl.idrad 
                AND d.datdolaz BETWEEN dpl.datlinod AND dpl.datlindo
            JOIN 
                linija l ON dpl.idlin = l.idlin
            WHERE 
                EXTRACT(MONTH FROM d.datdolaz) = ?
            GROUP BY 
                l.idlin, l.nazlin
            ORDER BY 
                broj_cekiranja DESC
            """;

        List<Linija> rezultati = new ArrayList<>();

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, mesec);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Linija linija = new Linija(
                            rs.getInt("linija_id"),
                            rs.getString("naziv_linije"),
                            rs.getInt("broj_cekiranja")
                    );
                    rezultati.add(linija);
                }
            }
        }

        return rezultati;
    }


}
