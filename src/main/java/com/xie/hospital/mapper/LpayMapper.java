package com.xie.hospital.mapper;

import com.xie.hospital.entity.Lrecord;
import com.xie.hospital.entity.Pay;
import com.xie.hospital.entity.Register;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LpayMapper {

    int updPay(Register register);

    int addPay(Register register);

    List<Pay> selPays(Register register);

    List<Lrecord> selSurplus(Lrecord lrecord);
}
