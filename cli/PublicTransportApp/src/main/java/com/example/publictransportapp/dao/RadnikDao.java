package com.example.publictransportapp.dao;

import com.example.publictransportapp.dto.VozacPutnikDTO;

import java.util.List;

public interface RadnikDao {

    public List<VozacPutnikDTO> getTopDriverPassengerPairs();

}
