package com.xie.hospital.service;

import com.xie.hospital.entity.Lpharmacy;
import com.xie.hospital.entity.Lrecord;

import java.util.List;

public interface LdrugService {

    List<Lpharmacy> selDrug(Lpharmacy lpharmacy);

    List<Lrecord> selDrugs(Lrecord lrecord);

    int addDrug(Lrecord lrecord);

    int updDrug(Lrecord lrecord);

    int delDrug(Lrecord lrecord);

    int updDrugs(Lrecord lrecord);

    int updNum(Lrecord lrecord);

    int upd(Lrecord lrecord);
}
