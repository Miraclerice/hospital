package com.xie.hospital.service;

import com.xie.hospital.entity.Lrecord;
import com.xie.hospital.entity.Pay;
import com.xie.hospital.entity.Register;

import java.util.List;

public interface LpayService {

    int updPay(Register register);

    int addPay(Register register);

    List<Pay> selPays(Register register);

    List<Lrecord> selSurplus(Lrecord lrecord);
}
