package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.Equipment;
import com.longIt.model.EquipmentLog;
import com.longIt.utils.Pager;

public interface EquipmentLogDao extends BaseDao<EquipmentLog> {

    Pager<EquipmentLog> getList(EquipmentLog bean);
}
