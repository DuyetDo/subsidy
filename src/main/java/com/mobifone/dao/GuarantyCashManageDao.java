package com.mobifone.dao;


import java.util.List;

import com.mobifone.model.GuarantyCashManage;

public interface GuarantyCashManageDao {
	
	GuarantyCashManage findByPK(int pk);

	GuarantyCashManage findByID(Long Id);

	GuarantyCashManage findByName(String Name);

	void save(GuarantyCashManage guarantyCashManage);
	
	void update(GuarantyCashManage guarantyCashManage);

	void deleteByID(Long Id);

	List<GuarantyCashManage> findAllGuarantyCashManage();

}
