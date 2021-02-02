package com.longIt.service;

import com.longIt.model.Equipment;
import com.longIt.model.EquipmentLog;
import com.longIt.utils.Pager;

public interface EquipmentLogService extends BaseService<EquipmentLog> {

    Pager<EquipmentLog> getList(EquipmentLog bean);

    EquipmentLog findById(Integer id);
}
