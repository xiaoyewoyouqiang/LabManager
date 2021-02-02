package com.longIt.service;

import com.longIt.model.Equipment;
import com.longIt.model.User;
import com.longIt.utils.Pager;

import java.util.List;

public interface EquipmentService extends BaseService<Equipment> {

    Pager<Equipment> getList(Equipment bean);

    Equipment findById(Integer id);
}
