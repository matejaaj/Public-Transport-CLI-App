package com.example.publictransportapp.service;

import com.example.publictransportapp.dao.RadnikDao;
import com.example.publictransportapp.dto.VozacPutnikDTO;

import java.sql.SQLException;
import java.util.List;

public class RadnikService {
    private final RadnikDao radnikDao;

    public RadnikService(RadnikDao radnikDao) {
        this.radnikDao = radnikDao;
    }

    public List<VozacPutnikDTO> getTopDriverPassengerPairs() throws SQLException {
        return radnikDao.getTopDriverPassengerPairs();
    }
}
