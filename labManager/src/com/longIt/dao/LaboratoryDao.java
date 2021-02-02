package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.Laboratory;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface LaboratoryDao extends BaseDao<Laboratory> {

    Pager<Laboratory> getList(Laboratory bean);
}
