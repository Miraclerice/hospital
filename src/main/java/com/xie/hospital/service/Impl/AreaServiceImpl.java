package com.xie.hospital.service.Impl;

import com.xie.hospital.entity.Area;
import com.xie.hospital.mapper.AreaMapper;
import com.xie.hospital.service.AreaService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class AreaServiceImpl implements AreaService {
    @Resource
    private AreaMapper areaMapper;

    @Override
    public List<Area> findAllArea(Area area) {
        return areaMapper.findAllArea(area);
    }

    @Override
    public int deleteArea(Integer areaId) {
        return areaMapper.deleteArea(areaId);
    }

    @Override
    public int addArea(Area area) {
        return areaMapper.addArea(area);
    }


    @Override
    public int count(Area area) {
        return areaMapper.count(area);
    }
}
