package com.example.publictransportapp.dao.impl;

import com.example.publictransportapp.connection.ConnectionUtil_HikariCP;
import com.example.publictransportapp.dao.RadnikDao;
import com.example.publictransportapp.dto.VozacPutnikDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RadnikDaoImpl implements RadnikDao {
    @Override
    public List<VozacPutnikDTO> getTopDriverPassengerPairs() {
        String query = """
                SELECT 
                    r.ime AS ime_vozaca,
                    r.prz AS prezime_vozaca,
                    p.imeput AS ime_putnika,
                    p.przput AS prezime_putnika,
                    COUNT(*) AS broj_voznji
                FROM 
                    se_cekira sc
                JOIN 
                    dolazak d ON sc.iddolaz = d.iddolaz
                JOIN 
                    karta k ON sc.idkar = k.idkar
                JOIN 
                    putnik p ON k.idput = p.idput
                JOIN 
                    detalji_povere_autobusa dpa ON d.idaut = dpa.idaut 
                        AND d.datdolaz BETWEEN dpa.datvozod AND dpa.davozdo
                JOIN 
                    radnik r ON dpa.idrad = r.idrad
                WHERE 
                    r.tiprad = 'vozac'
                GROUP BY 
                    r.ime, r.prz, p.imeput, p.przput
                ORDER BY 
                    broj_voznji DESC
                FETCH FIRST 3 ROWS ONLY
                """;

        List<VozacPutnikDTO> results = new ArrayList<>();

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String imeVozaca = rs.getString("ime_vozaca");
                String prezimeVozaca = rs.getString("prezime_vozaca");
                String imePutnika = rs.getString("ime_putnika");
                String prezimePutnika = rs.getString("prezime_putnika");
                int brojVoznji = rs.getInt("broj_voznji");

                results.add(new VozacPutnikDTO(
                        imeVozaca, prezimeVozaca, imePutnika, prezimePutnika, brojVoznji));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return results;
    }
}
