package com.longIt.service.impl;

import com.longIt.dao.RoleDao;
import com.longIt.dao.UserDao;
import com.longIt.model.Role;
import com.longIt.model.User;
import com.longIt.service.RoleService;
import com.longIt.service.UserService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService {
	@Autowired
     private RoleDao roleDao;

    @Override
    public Pager<Role> pagers() {
        return roleDao.pagers();
    }

    @Override
    public Role findByEn(String enName) {
        return roleDao.findByEn(enName);
    }
}
