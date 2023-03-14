package com.xie.hospital.service.Impl;

import com.xie.hospital.entity.Litem;
import com.xie.hospital.mapper.LitemMapper;
import com.xie.hospital.service.LitemService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class LitemServiceImpl implements LitemService {

    @Resource
    private LitemMapper litemMapper;

    @Override
    public List<Litem> selItems(Litem litem) {
        return litemMapper.selItems(litem);
    }

}
