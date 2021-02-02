package com.longIt.service.impl;

import com.longIt.dao.EquipmentDao;
import com.longIt.dao.EquipmentLogDao;
import com.longIt.model.Equipment;
import com.longIt.model.EquipmentLog;
import com.longIt.service.EquipmentLogService;
import com.longIt.service.EquipmentService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EquipmentLogServiceImpl extends BaseServiceImpl<EquipmentLog> implements EquipmentLogService {
	@Autowired
     private EquipmentLogDao dao;

    @Override
    public Pager<EquipmentLog> getList(EquipmentLog bean){
        return dao.getList(bean);}

    @Override
    public EquipmentLog findById(Integer id) {
        return dao.findById(id);
    }

}
