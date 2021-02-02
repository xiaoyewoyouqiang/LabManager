package com.longIt.service;

import com.longIt.model.Notice;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface NoticeService extends BaseService<Notice> {

    Pager<Notice> getList(Notice bean);

    Notice findById(Integer id);
}
