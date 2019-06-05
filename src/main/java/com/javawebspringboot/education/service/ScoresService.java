package com.javawebspringboot.education.service;

import java.util.List;

import com.javawebspringboot.education.model.ScoresTable;
import com.javawebspringboot.education.model.Subject;
import com.javawebspringboot.education.model.User;

public interface ScoresService {

	List<ScoresTable> findByUser(User user);
	
	List<ScoresTable> findBySubject(Subject subject);
        
}
