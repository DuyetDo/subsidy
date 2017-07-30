package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobifone.subsidy.dao.GuarantyCashManageDao;

import com.mobifone.subsidy.model.GuarantyCashManage;

@Service("guarantyCashManageservice")
@Transactional
public class GuarantyCashManageserviceImpl implements GuarantyCashManageservice {

	@Autowired
	private GuarantyCashManageDao dao;

	@Override
	public GuarantyCashManage findByPK(int pk) {

		return findByPK(pk);
	}

	@Override
	public GuarantyCashManage findByID(BigDecimal Id) {
		GuarantyCashManage u = dao.findByID(Id);
		return u;
	}

	@Override
	public GuarantyCashManage findByName(String Name) {
		GuarantyCashManage u = dao.findByName(Name);
		return u;

	}

	@Override
	public void save(GuarantyCashManage guarantyCashManage) {
		dao.save(guarantyCashManage);

	}

	@Override
	public void update(GuarantyCashManage guarantyCashManage) {
		dao.update(guarantyCashManage);

	}

	@Override
	public void deleteByID(BigDecimal Id) {
		dao.deleteByID(Id);

	}

	@Override
	public List<GuarantyCashManage> findAllGuarantyCashManage() {
		return dao.findAllGuarantyCashManage();
	}

}
