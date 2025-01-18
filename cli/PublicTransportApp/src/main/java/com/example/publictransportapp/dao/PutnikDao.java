package com.example.publictransportapp.dao;

import com.example.publictransportapp.dto.PutnikCekiranjaDTO;

import java.sql.SQLException;
import java.util.List;

public interface PutnikDao {
    List<PutnikCekiranjaDTO> getBrojCekiranjaPutnika() throws SQLException;
}
