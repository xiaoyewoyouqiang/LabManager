package com.longIt.service.impl;

import com.longIt.dao.EquipmentDao;
import com.longIt.dao.LaboratoryDao;
import com.longIt.model.Equipment;
import com.longIt.model.Laboratory;
import com.longIt.service.EquipmentService;
import com.longIt.service.LaboratoryService;
import com.longIt.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EquipmentServiceImpl extends BaseServiceImpl<Equipment> implements EquipmentService {
	@Autowired
     private EquipmentDao dao;

    @Override
    public Pager<Equipment> getList(Equipment bean){
        return dao.getList(bean);}

    @Override
    public Equipment findById(Integer id) {
        return dao.findById(id);
    }

}
