package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobifone.dao.GuarantorDao;
import com.mobifone.model.Guarantor;



@Service("guarantorservice")
@Transactional
public class GuarantorserviceImpl implements Guarantorservice {
	@Autowired
	private GuarantorDao dao;
	

	@Override
	public Guarantor findByPK(int pk) {
		
		return dao.findByPK(pk);
	}

	@Override
	public Guarantor findByID(Long Id) {
		Guarantor u = dao.findByID(Id);
		return u;
	}

	@Override
	public Guarantor findByName(String Name) {
		Guarantor u = dao.findByName(Name);
		return u;
	}

	@Override
	public void save(Guarantor guarantor) {
		dao.save(guarantor);
		
	}

	@Override
	public void update(Guarantor guarantor) {
		dao.update(guarantor);
		
	}

	@Override
	public void deleteByID(Long Id) {
		dao.deleteByID(Id);
		
	}

	@Override
	public List<Guarantor> findAllGuarantor() {
		
		return dao.findAllGuarantor();
	}

}
