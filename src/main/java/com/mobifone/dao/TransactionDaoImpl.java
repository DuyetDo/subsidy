package com.mobifone.dao;

import java.math.BigDecimal;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mobifone.model.Transaction;



@Repository("transactionDao")
public class TransactionDaoImpl extends AbstractDao<Integer, Transaction> implements TransactionDao {
	static final Logger logger = LoggerFactory.getLogger(GuarantyOrgDaoImpl.class);

	@Override
	public Transaction findByPK(int pk) {
		Transaction u = getByKey(pk);
		return u;

	}

	@Override
	public Transaction findByID(Long Id) {
		logger.info("Id : {}", Id);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		Transaction u = (Transaction) crit.uniqueResult();

		return u;
	}

	@Override
	public Transaction findBytransactionCode(String customerName) {
		logger.info("CustomerName : {}", customerName);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("customer_name", customerName));
		Transaction u = (Transaction) crit.uniqueResult();

		return u;	}

	@Override
	public void save(Transaction transaction) {
		persist(transaction);
		
	}

	@Override
	public void updateCustomers(Transaction transaction) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteByID(Long Id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Transaction> findAlTransaction() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<Transaction> u = (List<Transaction>) criteria.list();
		return u;
	}

}
