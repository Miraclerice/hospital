package com.xie.hospital.service;

import com.xie.hospital.entity.Area;
import com.xie.hospital.entity.Sdrugdictionary;
import com.xie.hospital.entity.Type;
import com.xie.hospital.entity.Unit;
import com.xie.hospital.mapper.SdrugdictionaryMapper;

import java.util.List;

public interface SdrugdictionaryService {
    List<SdrugdictionaryMapper> findAllSdrugdictionary(Sdrugdictionary sdrugdictionary);

    int addSdrugdictionary(Sdrugdictionary sdrugdictionary);

    int editSdrugdictionary(Sdrugdictionary sdrugdictionary);

    int deleteSdrugdictionary(Integer drugId);

    List<Unit> findAllUnit();

    List<Area> findAllArea();

    List<Type> findAllType();

    int count(Sdrugdictionary sdrugdictionary);
}
