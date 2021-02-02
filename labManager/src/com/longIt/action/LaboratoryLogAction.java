package com.longIt.action;

/**
 * 实验室租用
 */

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.longIt.model.Laboratory;
import com.longIt.model.LaboratoryLog;
import com.longIt.model.Role;
import com.longIt.model.User;
import com.longIt.service.LaboratoryLogService;
import com.longIt.service.LaboratoryService;
import com.longIt.service.RoleService;
import com.longIt.service.UserService;
import com.longIt.utils.JsonUtils;
import com.longIt.utils.Pager;
import com.longIt.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller("laboratorylogAction")
@Scope("prototype")
public class LaboratoryLogAction extends ActionSupport implements ModelDriven<LaboratoryLog> {
    @Autowired
    private LaboratoryLogService laboratoryLogService;
    private LaboratoryLog log;

    /**
     * list
     *
     * @return
     */
    public String list(){
        User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Role role = user1.getRole();
        if (role.getEnName().equals("admin") || role.getEnName().equals("js")) {
            Pager<LaboratoryLog> pagers = laboratoryLogService.getList(log);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("laboratoryLog", log);
        }
        return SUCCESS;
    }


    @Override
    public LaboratoryLog getModel() {
        if (log == null) {
            log = new LaboratoryLog();
        }
        return log;
    }

}
