package com.mobifone.dao;


import java.util.List;

import com.mobifone.model.Transaction;



public interface TransactionDao {

	Transaction findByPK(int pk);

	Transaction findByID(Long Id);

	Transaction findBytransactionCode(String customerName);

	void save(Transaction transaction);
	
	 void updateCustomers(Transaction transaction);

	void deleteByID(Long Id);

	List<Transaction> findAlTransaction();

}
