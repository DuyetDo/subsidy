package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobifone.subsidy.dao.GuarantyOrgDao;
import com.mobifone.subsidy.model.GuarantyOrg;

@Service("guarantyOrgservice")
@Transactional
public class GuarantyOrgserviceImpl implements GuarantyOrgservice {

	@Autowired
	private GuarantyOrgDao dao;

	@Override
	public GuarantyOrg findByPK(int pk) {

		return dao.findByPK(pk);
	}

	@Override
	public GuarantyOrg findByID(BigDecimal Id) {
		GuarantyOrg u = dao.findByID(Id);
		return u;

	}

	@Override
	public GuarantyOrg findBytaxCode(String TaxCode) {
		GuarantyOrg u = dao.findBytaxCode(TaxCode);
		return u;
	}

	@Override
	public void update(GuarantyOrg guarantyOrg) {
		dao.update(guarantyOrg);
	}

	@Override
	public void save(GuarantyOrg guarantyOrg) {
		dao.save(guarantyOrg);

	}

	@Override
	public void deleteByID(BigDecimal Id) {
		dao.deleteByID(Id);
	}

	@Override
	public List<GuarantyOrg> findAllGuarantyOrg() {

		return dao.findAllGuarantyOrg();
	}

}
