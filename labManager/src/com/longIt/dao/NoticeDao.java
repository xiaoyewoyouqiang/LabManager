package com.longIt.dao;

import com.longIt.base.dao.BaseDao;
import com.longIt.model.Notice;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface NoticeDao extends BaseDao<Notice> {


    Pager<Notice> getList(Notice bean);

    Notice findById(Integer id);



}
