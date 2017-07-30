package com.mobifone.dao;

import java.util.List;

import com.mobifone.model.Guarantor;

public interface GuarantorDao {

	Guarantor findByPK(int pk);

	Guarantor findByID(Long Id);

	Guarantor findByName(String Name);

	void save(Guarantor guarantor);

	void deleteByID(Long Id);

	void update(Guarantor guarantor);

	List<Guarantor> findAllGuarantor();

}
