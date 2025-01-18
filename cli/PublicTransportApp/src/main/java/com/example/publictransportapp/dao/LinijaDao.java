package com.example.publictransportapp.dao;

import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.dto.StanicaProsekDTO;

import java.sql.SQLException;
import java.util.List;

public interface LinijaDao {
    public List<Linija> getAllLines() throws SQLException;
    public  List<StanicaProsekDTO> getAvgCheckinsByStation(int linijaId) throws SQLException;
    public List<Linija> getCheckinsByLineAndMonth(int mesec) throws SQLException;
}
