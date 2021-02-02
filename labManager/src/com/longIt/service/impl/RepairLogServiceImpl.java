package com.longIt.service.impl;

import com.longIt.dao.LaboratoryLogDao;
import com.longIt.dao.RepairLogDao;
import com.longIt.model.LaboratoryLog;
import com.longIt.model.RepairLog;
import com.longIt.service.LaboratoryLogService;
import com.longIt.service.RepairLogService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RepairLogServiceImpl extends BaseServiceImpl<RepairLog> implements RepairLogService {
	@Autowired
     private RepairLogDao dao;

    @Override
    public Pager<RepairLog> getList(RepairLog bean){
        return dao.getList(bean);}

    @Override
    public RepairLog findById(Integer id) {
        return dao.findById(id);
    }

}
