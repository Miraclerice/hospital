package com.xie.hospital.service;

import com.xie.hospital.entity.Warehuose;

import java.util.List;

public interface WarehuoseService {
    List<Warehuose> findAllWarehuose(Warehuose warehuose);

    int deleteWarehuose(Integer warehouseId);

    int addWarehuose(Warehuose warehuose);

    int count(Warehuose warehuose);
}
