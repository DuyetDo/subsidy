package com.mobifone.service;


import java.util.List;

import com.mobifone.model.Guarantor;

public interface Guarantorservice {

	Guarantor findByPK(int pk);

	Guarantor findByID(Long Id);

	Guarantor findByName(String Name);

	void save(Guarantor guarantor);

	void update(Guarantor guarantor);

	void deleteByID(Long Id);

	List<Guarantor> findAllGuarantor();

}
