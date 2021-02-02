package com.longIt.dao.impl;

import com.longIt.base.dao.impl.BaseDaoImpl;
import com.longIt.dao.LaboratoryLogDao;
import com.longIt.dao.RepairLogDao;
import com.longIt.model.LaboratoryLog;
import com.longIt.model.RepairLog;
import com.longIt.utils.Pager;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class RepairLogDaoImpl extends BaseDaoImpl<RepairLog> implements RepairLogDao {

    @Override
    public Pager<RepairLog> getList(RepairLog bean) {
        Map<String, Object> alias = new HashMap<String, Object>();
        StringBuffer sb = new StringBuffer();
        sb.append("from RepairLog where 1=1");
        if (bean != null) {
            if (bean.getEquipment() != null && bean.getEquipment().getId() != null && !"".equals(bean.getEquipment().getId())) {
                sb.append(" and equipment.id = :equipmentId");
                alias.put("equipmentId", bean.getEquipment().getId());
            }
        }
        return findByAlias(sb.toString(), alias);
    }

    @Override
    public RepairLog findById(Integer id) {
        StringBuilder sb = new StringBuilder();
        sb.append("from RepairLog where id = :id");
        Query query = getSession().createQuery(sb.toString());
        query.setParameter("id", id);
        return (RepairLog) query.uniqueResult();
    }
}
