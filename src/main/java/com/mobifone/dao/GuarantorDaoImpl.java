package com.mobifone.dao;


import java.util.List;

import org.hibernate.Criteria;

import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mobifone.model.Guarantor;




@Repository("guarantorDao")
public class GuarantorDaoImpl extends AbstractDao<Integer, Guarantor>implements GuarantorDao{
	
	static final Logger logger = LoggerFactory.getLogger(GuarantorDaoImpl.class);

	@Override
	public Guarantor findByPK(int pk) {
		Guarantor u = getByKey(pk);
		
		return u;
	}

	@Override
	public Guarantor findByID(Long Id) {
		logger.info("Id : {}", Id);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		Guarantor u = (Guarantor) crit.uniqueResult();
		
		return u;
	}

	@Override
	public Guarantor findByName(String Name) {
		logger.info("Name : {}", Name);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("name", Name));
		Guarantor u = (Guarantor) crit.uniqueResult();
		
		return u;
	}

	@Override
	public void save(Guarantor guarantor) {
		persist(guarantor);
		
	}

	@Override
	public void deleteByID(Long Id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		Guarantor u = (Guarantor) crit.uniqueResult();
		if (null != u) {
			delete(u);
		}
		
	}

	@Override
	public List<Guarantor> findAllGuarantor() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<Guarantor> u = (List<Guarantor>) criteria.list();
		return u;
	}

	@Override
	public void update(Guarantor guarantor) {
		Guarantor entity = this.findByID(guarantor.getId());
		if (entity != null) {
			entity.setName(guarantor.getName());
			entity.setAddress(guarantor.getAddress());
			entity.setBalance(guarantor.getBalance());
			entity.setBirthday(guarantor.getBirthday());
			entity.setTaxCode(guarantor.getTaxCode());
			entity.setCardType(guarantor.getCardType());
			entity.setIdentifyCard(guarantor.getIdentifyCard());
			entity.setCreatedAt(guarantor.getCreatedAt());
			entity.setUpdatedAt(guarantor.getUpdatedAt());
		}
		
	}

}
