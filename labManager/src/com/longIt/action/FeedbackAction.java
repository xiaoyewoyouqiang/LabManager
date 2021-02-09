package com.longIt.action;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.longIt.model.Equipment;
import com.longIt.model.Feedback;
import com.longIt.model.Laboratory;
import com.longIt.model.Notice;
import com.longIt.model.RepairLog;
import com.longIt.model.Role;
import com.longIt.model.User;
import com.longIt.service.FeedbackService;
import com.longIt.service.UserService;
import com.longIt.utils.JsonUtils;
import com.longIt.utils.Pager;
import com.longIt.utils.UserUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
@Controller("feedbackAction")
@Scope("prototype")
public class FeedbackAction extends ActionSupport implements ModelDriven<Feedback> {

	@Autowired
    private FeedbackService feedbackService;	
	private Feedback feedback;
	private Map<String, Object> map = new HashMap();
	@Override
	public Feedback getModel() {
		// TODO Auto-generated method stub
		if (feedback == null) {
			feedback = new Feedback();
        }
        return feedback;
	}
	
	/**
	 * 故障报修反馈页面显示
	 * @throws IOException 
	 */
	public String fb() throws IOException{
		User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Pager<Laboratory> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")||role.getEnName().equals("js")||role.getEnName().equals("xs")) {
//            pagers = feedbackService.getList(feedback);
//            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("feedback", feedback);
        }
        return SUCCESS;
	}
	
	/**
	 * 故障报修反馈业务逻辑
	 * @throws IOException 
	 */
	public String save() throws IOException {
		feedback.setTime(new Date());
		feedbackService.save(feedback);
        map.put("flag", true);
        map.put("url", "feedback_fb.do");
        JsonUtils.toJson(map);
        return SUCCESS;
    }

	public String fblist() {
		User user1 = UserUtils.getUser();
        if (user1 == null || user1.getId() == null){
            ActionContext.getContext().put("login", 1);
            return SUCCESS;
        }
        Pager<Feedback> pagers = null;
        Role role = user1.getRole();
        if (role.getEnName().equals("admin")) {
            pagers = feedbackService.getFeedback(feedback);
            ActionContext.getContext().put("pagers", pagers);
            ActionContext.getContext().put("user", user1);
            ActionContext.getContext().put("bean", feedback);
            return SUCCESS;
        
        }
        return null;
	}
	
	/**
	 * 删除
	 * @throws IOException
	 */
	public void delete() throws IOException {
        Feedback bean = feedbackService.findById(feedback.getId());
        bean.setIsDelete(1);
        feedbackService.delete(feedback.getId());
        map.put("flag", true);
        map.put("url", "feedback_fblist.do");
        JsonUtils.toJson(map);
    }

}
