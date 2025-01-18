package com.example.publictransportapp.dao.impl;

import com.example.publictransportapp.connection.ConnectionUtil_HikariCP;
import com.example.publictransportapp.dao.PutnikDao;
import com.example.publictransportapp.dto.PutnikCekiranjaDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PutnikDaoImpl implements PutnikDao {
    @Override
    public List<PutnikCekiranjaDTO> getBrojCekiranjaPutnika() throws SQLException {
        String query = """
                SELECT 
                    p.imeput AS ime,
                    p.przput AS prezime,
                    COUNT(sc.idkar) AS broj_cekiranja
                FROM 
                    se_cekira sc
                JOIN 
                    karta k ON sc.idkar = k.idkar
                JOIN 
                    putnik p ON k.idput = p.idput
                GROUP BY 
                    p.imeput, p.przput
                ORDER BY 
                    broj_cekiranja DESC
                """;

        List<PutnikCekiranjaDTO> result = new ArrayList<>();

        try (Connection connection = ConnectionUtil_HikariCP.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                String ime = resultSet.getString("ime");
                String prezime = resultSet.getString("prezime");
                int brojCekiranja = resultSet.getInt("broj_cekiranja");
                result.add(new PutnikCekiranjaDTO(ime, prezime, brojCekiranja));
            }
        }

        return result;
    }


}
