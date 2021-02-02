package com.longIt.service.impl;

import java.util.List;
import java.util.Map;

import com.longIt.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import com.longIt.base.dao.BaseDao;
import com.longIt.service.BaseService;

public class  BaseServiceImpl<T> implements BaseService<T>{
	/** 
     * 注入BaseDao 
     */  
	@Autowired
    private BaseDao<T> dao;  

	public BaseDao<T> getDao() {
		return dao;
	}

	public void setDao(BaseDao<T> dao) {
		this.dao = dao;
	}

	public void save(T entity) {
		dao.add(entity);
	}

	public void update(T entity) {
		dao.update(entity);
	}

	public void updates(T entity) {
		dao.updates(entity);
	}

	public void delete(int id) {
		dao.delete(id);
	}

    @Override
    public T findById(int id) {
        return dao.findById(id);
    }

    public T getById(int id) {
		return dao.load(id);
	}

	public List<T> getByHQL(String hql, Map<String, Object> alias) {
		return  dao.listByAlias(hql, alias);
	}

	@Override
	public T getOneByHql(String hql, Map<String, Object> alias) {
		return dao.getByParams(hql,alias);
	}


}
