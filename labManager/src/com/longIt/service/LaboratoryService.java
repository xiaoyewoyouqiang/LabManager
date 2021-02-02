package com.longIt.service;

import com.longIt.model.Laboratory;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface LaboratoryService extends BaseService<Laboratory> {

    Pager<Laboratory> getList(Laboratory bean);

    Laboratory findById(Integer id);
}
