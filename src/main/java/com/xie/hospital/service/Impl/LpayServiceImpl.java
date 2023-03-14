package com.xie.hospital.service.Impl;

import com.xie.hospital.entity.Lrecord;
import com.xie.hospital.entity.Pay;
import com.xie.hospital.entity.Register;
import com.xie.hospital.mapper.LpayMapper;
import com.xie.hospital.service.LpayService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class LpayServiceImpl implements LpayService {

    @Resource
    private LpayMapper lpayMapper;

    @Override
    public int updPay(Register register) {
        return lpayMapper.updPay(register);
    }

    @Override
    public int addPay(Register register) {
        return lpayMapper.addPay(register);
    }

    @Override
    public List<Pay> selPays(Register register) {
        return lpayMapper.selPays(register);
    }

    @Override
    public List<Lrecord> selSurplus(Lrecord lrecord) {
        return lpayMapper.selSurplus(lrecord);
    }
}
