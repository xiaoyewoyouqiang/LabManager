package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.LaboratoryLog;
import com.longIt.model.RepairLog;
import com.longIt.utils.Pager;

public interface RepairLogDao extends BaseDao<RepairLog> {

    Pager<RepairLog> getList(RepairLog bean);

    RepairLog findById(Integer id);
}
