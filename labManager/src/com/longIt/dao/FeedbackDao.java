package com.longIt.dao;

import com.longIt.model.Feedback;
import com.longIt.utils.Pager;

public interface FeedbackDao {

	Pager<Feedback> getFeedback(Feedback feedback);

	Pager<Feedback> getList(Feedback feedback);

	Feedback findById(Integer id);

}
