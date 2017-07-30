package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;


import com.mobifone.subsidy.model.GuarantyCashManage;

public interface GuarantyCashManageservice {
	
	GuarantyCashManage findByPK(int pk);

	GuarantyCashManage findByID(BigDecimal Id);

	GuarantyCashManage findByName(String Name);

	void save(GuarantyCashManage guarantyCashManage);
	
	void update(GuarantyCashManage guarantyCashManage);

	void deleteByID(BigDecimal Id);

	List<GuarantyCashManage> findAllGuarantyCashManage();

}
