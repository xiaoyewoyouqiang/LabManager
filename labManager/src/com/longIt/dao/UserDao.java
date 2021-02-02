package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface UserDao extends BaseDao<User> {

    User getUser(User user);

    Pager<User> getList(User user);

    User findById(Integer id);

    List<User> getListAdmin();


}
