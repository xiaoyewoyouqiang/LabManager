package com.longIt.service;

import com.longIt.model.LaboratoryLog;
import com.longIt.model.RepairLog;
import com.longIt.utils.Pager;

public interface RepairLogService extends BaseService<RepairLog> {

    Pager<RepairLog> getList(RepairLog bean);

    RepairLog findById(Integer id);
}
