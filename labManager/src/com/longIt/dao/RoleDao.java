package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.Role;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface RoleDao extends BaseDao<Role> {

    Pager<Role> pagers();

    Role findByEn(String enName);
}
