package com.example.publictransportapp.service;




import com.example.publictransportapp.dao.StanicaDao;
import com.example.publictransportapp.dao.impl.StanicaDaoImpl;
import com.example.publictransportapp.model.Linija;
import com.example.publictransportapp.model.Stanica;

import java.sql.SQLException;
import java.util.List;

public class StanicaService {

    private final StanicaDao stanicaDao;

    public StanicaService(StanicaDao stanicaDao) {
        this.stanicaDao = stanicaDao;
    }

    public List<Stanica> getAllStanice() throws SQLException {
        return stanicaDao.getAllStanice();
    }

    public List<Linija> getLinijeByStanicaId(int stanicaId) throws SQLException {
        return stanicaDao.getLinijeByStanicaId(stanicaId);
    }

    public boolean deleteStanicaAndSadrzi(int stanicaId) throws SQLException {
        return stanicaDao.deleteStanicaAndSadrzi(stanicaId);
    }
}
