package com.mobifone.dao;


import java.util.List;

import com.mobifone.model.GuarantyOrg;


public interface GuarantyOrgDao {

	GuarantyOrg findByPK(int pk);

	GuarantyOrg findByID(Long Id);

	GuarantyOrg findBytaxCode(String TaxCode);

	void save(GuarantyOrg guarantyOrg);
	
	 void update(GuarantyOrg guarantyOrg);

	void deleteByID(Long Id);

	List<GuarantyOrg> findAllGuarantyOrg();

}
