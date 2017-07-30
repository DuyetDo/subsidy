package com.mobifone.service;

import java.math.BigDecimal;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobifone.subsidy.dao.TransactionDao;
import com.mobifone.subsidy.model.GuarantyOrg;
import com.mobifone.subsidy.model.Transaction;



@Service("transactionservice")
@Transactional
public class TransactionserviceImpl implements Transactionservice {
	
	@Autowired
	private TransactionDao dao;

	@Override
	public Transaction findByPK(int pk) {
		
		return dao.findByPK(pk);
	}

	@Override
	public Transaction findByID(BigDecimal Id) {
		Transaction u = dao.findByID(Id);
				return u;
	}

	@Override
	public Transaction findBytransactionCode(String customerName) {
		Transaction u = dao.findBytransactionCode(customerName);
		return u;

		
			}

	@Override
	public void update(Transaction transaction) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Transaction transaction) {
		dao.save(transaction);
		
	}

	@Override
	public void deleteByID(BigDecimal Id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Transaction> findAlTransaction() {
		return dao.findAlTransaction();
	}

}
