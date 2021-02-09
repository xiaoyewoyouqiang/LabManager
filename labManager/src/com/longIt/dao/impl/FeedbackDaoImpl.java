package com.longIt.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.longIt.base.dao.impl.BaseDaoImpl;
import com.longIt.dao.FeedbackDao;
import com.longIt.model.Feedback;
import com.longIt.model.User;
import com.longIt.utils.Pager;

@Repository
public class FeedbackDaoImpl extends BaseDaoImpl<Feedback> implements FeedbackDao{

	@Override
	public Pager<Feedback> getFeedback(Feedback bean) {
		Map<String, Object> alias = new HashMap<String, Object>();
        StringBuffer sb = new StringBuffer();
        sb.append("from Feedback where id!=null");
        if (bean != null) {
            if (bean.getFloor() != null && !"".equals(bean.getFloor())) {
                sb.append(" and floor like :floor");
                alias.put("floor", "%" + bean.getFloor().trim() + "%");
            }
            if (bean.getRoom() != null && !"".equals(bean.getRoom())) {
                sb.append(" and room like :room");
                alias.put("room", "%" + bean.getRoom().trim() + "%");
            }
            if (bean.getNumber() != null && !"".equals(bean.getNumber())) {
                sb.append(" and number like :number");
                alias.put("number", "%" + bean.getNumber().trim() + "%");
            }
            
        }
        return findByAlias(sb.toString(), alias);
	}

	@Override
	public Pager<Feedback> getList(Feedback bean) {
		Map<String, Object> alias = new HashMap<String, Object>();
        StringBuffer sb = new StringBuffer();
        sb.append("from Feedback where id!=null ");
        if (bean != null) {
            if (bean.getId() != null && !"".equals(bean.getFloor())) {
                sb.append(" and floor like :floor");
                alias.put("floor", "%" + bean.getFloor().trim() + "%");
            } 
        }
        return findByAlias(sb.toString(), alias);
	}
	
	@Override
	public Feedback findById(Integer id) {
		StringBuilder sb = new StringBuilder();
        sb.append("from Feedback where isDelete = 0 and id = :id");
        Query query = getSession().createQuery(sb.toString());
        query.setParameter("id", id);
        return (Feedback) query.uniqueResult();
		
	}

}
