package com.longIt.service;

import com.longIt.model.Equipment;
import com.longIt.model.Feedback;
import com.longIt.utils.Pager;
 
public interface FeedbackService extends BaseService<Feedback> {

	Pager<Feedback> getFeedback(Feedback feedback);

	Pager<Feedback> getList(Feedback feedback);
	
	Feedback findById(Integer id);
}
