package com.longIt.service.impl;

import com.longIt.dao.UserDao;
import com.longIt.model.User;
import com.longIt.service.UserService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
	@Autowired
     private UserDao userDao;

    @Override
    public User getUser(User user){return userDao.getUser(user);}

    @Override
    public Pager<User> getList(User user){
        return userDao.getList(user);}

    @Override
    public List<User> getListAdmin() {
        return userDao.getListAdmin();
    }

    @Override
    public User findById(Integer id) {
        return userDao.findById(id);
    }

}
