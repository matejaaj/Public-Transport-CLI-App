package com.example.publictransportapp.service;

import com.example.publictransportapp.dao.PutnikDao;
import com.example.publictransportapp.dto.PutnikCekiranjaDTO;

import java.sql.SQLException;
import java.util.List;

public class PutnikService {
    private PutnikDao putnikDao;

    public PutnikService(PutnikDao putnikDao) {
        this.putnikDao = putnikDao;
    }

    public List<PutnikCekiranjaDTO> getBrojCekiranjaPutnika() throws SQLException {
        return putnikDao.getBrojCekiranjaPutnika();
    }
}
