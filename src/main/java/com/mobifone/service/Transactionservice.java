package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;


import com.mobifone.subsidy.model.Transaction;

public interface Transactionservice {

	Transaction findByPK(int pk);

	Transaction findByID(BigDecimal Id);

	Transaction findBytransactionCode(String customerName);
	
	void update(Transaction transaction);

	void save(Transaction transaction);

	void deleteByID(BigDecimal Id);

	List<Transaction> findAlTransaction();

}
