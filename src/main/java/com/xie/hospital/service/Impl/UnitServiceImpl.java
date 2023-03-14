package com.xie.hospital.service.Impl;

import com.xie.hospital.entity.Unit;
import com.xie.hospital.mapper.UnitMapper;
import com.xie.hospital.service.UnitService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class UnitServiceImpl implements UnitService {
    @Resource
    private UnitMapper unitMapper;

    @Override
    public List<Unit> findAllUnit(Unit unit) {
        return unitMapper.findAllUnit(unit);
    }

    @Override
    public int deleteUnit(Integer unitId) {
        return unitMapper.deleteUnit(unitId);
    }

    @Override
    public int addUnit(Unit unit) {
        return unitMapper.addUnit(unit);
    }


    @Override
    public int count(Unit unit) {
        return unitMapper.count(unit);
    }
}
