package com.longIt.dao.impl;

import com.longIt.base.dao.impl.BaseDaoImpl;
import com.longIt.dao.RoleDao;
import com.longIt.dao.UserDao;
import com.longIt.model.Role;
import com.longIt.model.User;
import com.longIt.utils.Pager;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDao {


    @Override
    public Pager<Role> pagers() {
        String hql = "from Role where enName <> 'admin' ";
        return findByAlias(hql, null);
    }

    @Override
    public Role findByEn(String enName) {
        StringBuilder sb = new StringBuilder();
        sb.append("from Role where enName = :enName");
        Query query = getSession().createQuery(sb.toString());
        query.setParameter("enName", enName);
        return (Role) query.uniqueResult();
    }
}
