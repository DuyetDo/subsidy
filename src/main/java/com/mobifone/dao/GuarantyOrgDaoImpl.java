package com.mobifone.dao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mobifone.model.GuarantyOrg;



@Repository("guarantyOrgDao")
public class GuarantyOrgDaoImpl extends AbstractDao<Integer, GuarantyOrg> implements GuarantyOrgDao {
	static final Logger logger = LoggerFactory.getLogger(GuarantyOrgDaoImpl.class);

	@Override
	public GuarantyOrg findByPK(int pk) {
		GuarantyOrg u = getByKey(pk);

		return u;
	}

	@Override
	public GuarantyOrg findByID(Long Id) {
		logger.info("Id : {}", Id);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		GuarantyOrg u = (GuarantyOrg) crit.uniqueResult();

		return u;
	}

	@Override
	public GuarantyOrg findBytaxCode(String TaxCode) {
		logger.info("TaxCode : {}", TaxCode);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("tax_code", TaxCode));
		GuarantyOrg u = (GuarantyOrg) crit.uniqueResult();

		return u;
	}

	@Override
	public void save(GuarantyOrg guarantyOrg) {
		persist(guarantyOrg);

	}

	@Override
	public void deleteByID(Long Id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		GuarantyOrg u = (GuarantyOrg) crit.uniqueResult();
		if (null != u) {
			delete(u);
		}

	}

	@Override
	public List<GuarantyOrg> findAllGuarantyOrg() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<GuarantyOrg> u = (List<GuarantyOrg>) criteria.list();
		return u;
	}

	@Override
	public void update(GuarantyOrg guarantyOrg) {
		GuarantyOrg entity = this.findByID(guarantyOrg.getId());
		if (entity != null) {
			entity.setTaxCode(guarantyOrg.getTaxCode());
			entity.setBalance(guarantyOrg.getBalance());
			entity.setBusinessLicense(guarantyOrg.getBusinessLicense());
			entity.setCreatedAt(guarantyOrg.getCreatedAt());
			entity.setUpdatedAt(guarantyOrg.getUpdatedAt());

		}
	}

}
