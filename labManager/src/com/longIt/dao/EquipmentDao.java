package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.Equipment;
import com.longIt.model.Laboratory;
import com.longIt.utils.Pager;

public interface EquipmentDao extends BaseDao<Equipment> {

    Pager<Equipment> getList(Equipment bean);
}
