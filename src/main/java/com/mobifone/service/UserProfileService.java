package com.mobifone.service;

import java.util.List;
import com.mobifone.model.UserProfile;

public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
