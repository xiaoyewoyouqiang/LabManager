package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.Laboratory;
import com.longIt.model.LaboratoryLog;
import com.longIt.model.User;
import com.longIt.utils.Pager;

public interface LaboratoryLogDao extends BaseDao<LaboratoryLog> {

    Pager<LaboratoryLog> getList(LaboratoryLog bean);

    LaboratoryLog findById(Integer id);
}
