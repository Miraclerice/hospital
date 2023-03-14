package com.xie.hospital.mapper;

import com.xie.hospital.entity.Area;
import com.xie.hospital.entity.Sdrugdictionary;
import com.xie.hospital.entity.Type;
import com.xie.hospital.entity.Unit;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SdrugdictionaryMapper {
    //药品字典的增删改查
    List<SdrugdictionaryMapper> findAllSdrugdictionary(Sdrugdictionary sdrugdictionary);

    int addSdrugdictionary(Sdrugdictionary sdrugdictionary);

    int editSdrugdictionary(Sdrugdictionary sdrugdictionary);

    int deleteSdrugdictionary(Integer drugId);

    List<Unit> findAllUnit();

    List<Area> findAllArea();

    List<Type> findAllType();

    int count(Sdrugdictionary sdrugdictionary);
}
