package com.longIt.action;

/**
 * 用户新增
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

@Controller("laboratoryAction")
@Scope("prototype")
public class LaboratoryAction extends ActionSupport implements ModelDriven<Laboratory> {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private LaboratoryService laboratoryService;
    @Autowired
    private LaboratoryLogService laboratoryLogService;
    private User user;
    private Laboratory laboratory;
    private Integer laboratoryId;
    private Map<String, Object> map = new HashMap();
    


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
        Pager<Laboratory> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")||role.getEnName().equals("js")||role.getEnName().equals("xs")) {
            pagers = laboratoryService.getList(laboratory);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("laboratory", laboratory);
        }
        return SUCCESS;
    }

    public String listshenyue(){
        User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Pager<Laboratory> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")||role.getEnName().equals("js")||role.getEnName().equals("xs")) {
            pagers = laboratoryService.getList(laboratory);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("laboratory", laboratory);
        }
        return SUCCESS;
    }

    
    public String listcopy(){
        User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Pager<Laboratory> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")||role.getEnName().equals("js")||role.getEnName().equals("xs")) {
            pagers = laboratoryService.getList(laboratory);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("laboratory", laboratory);
        }
        return SUCCESS;
    }

    /**
     * list2
     *
     * @return
     */
    public String list2(){
        User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Pager<Laboratory> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")||role.getEnName().equals("js")||role.getEnName().equals("xs")) {
            pagers = laboratoryService.getList(laboratory);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("laboratory", laboratory);
        }
        return SUCCESS;
    }
    
    public String list2copy(){
        User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Pager<Laboratory> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")||role.getEnName().equals("js")||role.getEnName().equals("xs")) {
            pagers = laboratoryService.getList(laboratory);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("laboratory", laboratory);
        }
        return SUCCESS;
    }

    /**
     * 预约
     *
     * @return
     */
    public void yy() throws IOException {
        laboratory.setState(2);;
        laboratory.setUser(UserUtils.getUser());
        LaboratoryLog laboratoryLog = new LaboratoryLog();
        laboratoryLog.setState(2);
        laboratoryLog.setLaboratory(laboratory);
        laboratoryLog.setTime(new Date());
        laboratoryLog.setUser(UserUtils.getUser());
        laboratoryLogService.save(laboratoryLog);
        laboratory.setLaboratoryLogId(laboratoryLog.getId());
        laboratoryService.updates(laboratory);
        map.put("flag", true);
        map.put("url", "laboratory_list2.do");
        JsonUtils.toJson(map);
    }

    /**
     * 取消预约
     *
     * @return
     */
    public void qx() throws IOException {
        Laboratory laboratory1 = laboratoryService.findById(laboratory.getId());
        LaboratoryLog laboratoryLog = laboratoryLogService.findById(laboratory1.getLaboratoryLogId());
        if (laboratoryLog.getUser().getId() == UserUtils.getUser().getId()){
            laboratory1.setState(3);;
            laboratory1.setUser(null);
            laboratoryService.update(laboratory1);
            laboratoryLog.setState(3);
            laboratoryLog.setEndTime(new Date());
            laboratoryLog.setQx(UserUtils.getUser());
            laboratoryLogService.updates(laboratoryLog);
            map.put("flag", true);
            map.put("url", "laboratory_list2.do");
            JsonUtils.toJson(map);
        } else {
            map.put("flag", false);
            map.put("url", "laboratory_list2.do");
            JsonUtils.toJson(map);
        }

    }

    /**
     * 跳转add
     *
     * @return
     */
    public String add(){
        User user1 = UserUtils.getUser();
        ActionContext.getContext().put("bean", user1);
        return SUCCESS;
    }

    /**
     * 查询修改
     *
     * @return
     */
    public String edit() {
        if (laboratoryId != null && !laboratoryId.equals("")){
            Laboratory bean = laboratoryService.findById(laboratoryId);
            ActionContext.getContext().put("bean", bean);
        }
        return SUCCESS;
    }


    /**
     * 审核
     *
     * @return
     */
    public void updateSh() throws IOException {
    	laboratory.setUser(UserUtils.getUser());
        LaboratoryLog laboratoryLog = new LaboratoryLog();
    	Integer state = laboratory.getState();//无法获取，要从list2.jsp中传入状态值
    	if(state == 2) {
    		laboratory.setState(1);
    		laboratoryLog.setState(1);
    	}
    	if(state ==3) {
    		laboratory.setState(0);
    		laboratoryLog.setState(0);
    	}
        laboratoryLog.setLaboratory(laboratory);
        laboratoryLog.setTime(new Date());
        laboratoryLog.setUser(UserUtils.getUser());
        laboratoryLogService.save(laboratoryLog);
        laboratory.setLaboratoryLogId(laboratoryLog.getId());
        laboratoryService.updates(laboratory);
        map.put("flag", true);
        map.put("url", "laboratory_list2.do");
        JsonUtils.toJson(map);
    }
    
    public void updateShcopy() throws IOException {
        user.setIsSh(1);
        userService.updates(user);
        map.put("flag", true);
        map.put("url", "usercopy_list.do");
        JsonUtils.toJson(map);
    }
    

    /**
     * 更新
     *
     * @return
     */
    public void update() throws IOException {
        laboratoryService.updates(laboratory);
        map.put("flag", true);
        map.put("url", "laboratory_list.do");
        JsonUtils.toJson(map);
    }

    /**
     * 保存
     *
     * @return
     */
    public String save() throws IOException {
        laboratory.setTime(new Date());
        laboratoryService.save(laboratory);
        map.put("flag", true);
        map.put("url", "laboratory_list.do");
        JsonUtils.toJson(map);
        return SUCCESS;
    }

    public void delete() throws IOException {
        laboratory.setIsDelete(1);
        laboratoryService.updates(laboratory);
        map.put("flag", true);
        map.put("url", "laboratory_list.do");
        JsonUtils.toJson(map);
    }

    @Override
    public Laboratory getModel() {
        if (laboratory == null) {
            laboratory = new Laboratory();
        }
        return laboratory;
    }

    public Integer getLaboratoryId() {
        return laboratoryId;
    }

    public void setLaboratoryId(Integer laboratoryId) {
        this.laboratoryId = laboratoryId;
    }

}
