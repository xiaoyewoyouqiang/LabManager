package com.longIt.service.impl;

import com.longIt.dao.LaboratoryDao;
import com.longIt.dao.UserDao;
import com.longIt.model.Laboratory;
import com.longIt.model.User;
import com.longIt.service.LaboratoryService;
import com.longIt.service.UserService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LaboratoryServiceImpl extends BaseServiceImpl<Laboratory> implements LaboratoryService {
	@Autowired
     private LaboratoryDao dao;

    @Override
    public Pager<Laboratory> getList(Laboratory bean){
        return dao.getList(bean);}

    @Override
    public Laboratory findById(Integer id) {
        return dao.findById(id);
    }

}
