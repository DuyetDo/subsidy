package com.mobifone.dao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mobifone.model.GuarantyCashManage;




@Repository("guarantyCashManageDao")
public class GuarantyCashManageDaoImpl extends AbstractDao<Integer, GuarantyCashManage>implements GuarantyCashManageDao {

	static final Logger logger = LoggerFactory.getLogger(GuarantyCashManageDaoImpl.class);

	@Override
	public GuarantyCashManage findByPK(int pk) {
		GuarantyCashManage u = getByKey(pk);
		return u;
		
	}

	@Override
	public GuarantyCashManage findByID(Long Id) {
		logger.info("Id : {}", Id);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		GuarantyCashManage u = (GuarantyCashManage) crit.uniqueResult();
		return u;
	}

	@Override
	public GuarantyCashManage findByName(String Name) {
		logger.info("Name : {}", Name);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("name", Name));
		GuarantyCashManage u = (GuarantyCashManage) crit.uniqueResult();
		
		return u;
	}

	@Override
	public void save(GuarantyCashManage guarantyCashManage) {
		persist(guarantyCashManage);
	}

	@Override
	public void deleteByID(Long Id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", Id));
		GuarantyCashManage u = (GuarantyCashManage) crit.uniqueResult();
		if (null != u) {
			delete(u);
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<GuarantyCashManage> findAllGuarantyCashManage() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<GuarantyCashManage> u = (List<GuarantyCashManage>) criteria.list();
		return u;
	}
	
	public void update(GuarantyCashManage guarantyCashManage){
		
		//GuarantyCashManage entity = this.findByID(guarantyCashManage.getId());
//		if (entity != null) {
//			entity.setName(guarantyCashManage.getName());
//			entity.setBalance(guarantyCashManage.getBalance());
//			entity.setCode(guarantyCashManage.getCode());
//			entity.setCreatedAt(guarantyCashManage.getCreatedAt());
//			entity.setUpdatedAt(guarantyCashManage.getUpdatedAt());
	}


}
