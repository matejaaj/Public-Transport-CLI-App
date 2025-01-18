package com.example.publictransportapp.service;

import com.example.publictransportapp.dao.LinijaDao;
import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.dto.StanicaProsekDTO;

import java.sql.SQLException;
import java.util.List;

public class LinijaService {
    private final LinijaDao linijaDao;

    public LinijaService(LinijaDao linijaDao) {
        this.linijaDao = linijaDao;
    }

    public List<Linija> getAllLines() throws SQLException {
        return linijaDao.getAllLines();
    }


    public List<StanicaProsekDTO> getAvgCheckinsByStation(int linijaId) throws SQLException {
        return linijaDao.getAvgCheckinsByStation(linijaId);
    }

    public List<Linija> getCheckinsByLineAndMonth(int mesec) throws SQLException {
        return linijaDao.getCheckinsByLineAndMonth(mesec);
    }

}
