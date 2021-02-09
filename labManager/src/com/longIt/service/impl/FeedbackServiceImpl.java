package com.longIt.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.longIt.dao.FeedbackDao;
import com.longIt.model.Feedback;
import com.longIt.model.User;
import com.longIt.service.FeedbackService;
import com.longIt.utils.Pager;

@Service
public class FeedbackServiceImpl extends BaseServiceImpl<Feedback>  implements FeedbackService {

	@Autowired
	private FeedbackDao feedbackDao;
	
	@Override
	public Pager<Feedback> getFeedback(Feedback feedback) {
		// TODO Auto-generated method stub
		return feedbackDao.getFeedback(feedback);
	}

	@Override
	public Pager<Feedback> getList(Feedback feedback) {
		// TODO Auto-generated method stub
		return feedbackDao.getList(feedback);
	}

	@Override
	public Feedback findById(Integer id) {
		// TODO Auto-generated method stub
		return feedbackDao.findById(id);
	}

	
	
	
}
