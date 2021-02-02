package com.longIt.service;

import com.longIt.model.Role;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface RoleService extends BaseService<Role> {

    Pager<Role> pagers();

    Role findByEn(String enName);

}
