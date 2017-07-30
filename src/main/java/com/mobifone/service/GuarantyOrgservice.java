package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;

import com.mobifone.subsidy.model.GuarantyOrg;

public interface GuarantyOrgservice {

	GuarantyOrg findByPK(int pk);

	GuarantyOrg findByID(BigDecimal Id);

	GuarantyOrg findBytaxCode(String TaxCode);
	
	void update(GuarantyOrg guarantyOrg);

	void save(GuarantyOrg guarantyOrg);

	void deleteByID(BigDecimal Id);

	List<GuarantyOrg> findAllGuarantyOrg();

}
