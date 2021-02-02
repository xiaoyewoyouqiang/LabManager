package com.longIt.service.impl;

import com.longIt.dao.LaboratoryLogDao;
import com.longIt.model.LaboratoryLog;
import com.longIt.service.LaboratoryLogService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LaboratoryLogServiceImpl extends BaseServiceImpl<LaboratoryLog> implements LaboratoryLogService {
	@Autowired
     private LaboratoryLogDao dao;

    @Override
    public Pager<LaboratoryLog> getList(LaboratoryLog bean){
        return dao.getList(bean);}

    @Override
    public LaboratoryLog findById(Integer id) {
        return dao.findById(id);
    }

}
