package com.longIt.service.impl;

import com.longIt.dao.NoticeDao;
import com.longIt.dao.UserDao;
import com.longIt.model.Notice;
import com.longIt.model.User;
import com.longIt.service.NoticeService;
import com.longIt.service.UserService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl extends BaseServiceImpl<Notice> implements NoticeService {
	@Autowired
     private NoticeDao dao;

    @Override
    public Pager<Notice> getList(Notice bean){
        return dao.getList(bean);}

    @Override
    public Notice findById(Integer id) {
        return dao.findById(id);
    }

}
