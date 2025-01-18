package com.example.publictransportapp.dao;

import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.model.Stanica;

import java.sql.SQLException;
import java.util.List;

public interface StanicaDao {
    public List<Stanica> getAllStanice() throws SQLException;
    public boolean deleteStanicaAndSadrzi(int stanicaId) throws SQLException;
    public List<Linija> getLinijeByStanicaId(int stanicaId) throws SQLException;
}
