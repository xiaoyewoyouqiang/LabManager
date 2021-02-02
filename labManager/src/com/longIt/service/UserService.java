package com.longIt.service;

import com.longIt.model.User;
import com.longIt.utils.Pager;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import java.util.List;

public interface UserService extends BaseService<User> {

    User getUser(User user);

    Pager<User> getList(User user);

    List<User> getListAdmin();

    User findById(Integer id);
}
