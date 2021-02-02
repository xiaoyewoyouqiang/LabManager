package com.longIt.service;

import com.longIt.model.LaboratoryLog;
import com.longIt.utils.Pager;

public interface LaboratoryLogService extends BaseService<LaboratoryLog> {

    Pager<LaboratoryLog> getList(LaboratoryLog bean);

    LaboratoryLog findById(Integer id);
}
