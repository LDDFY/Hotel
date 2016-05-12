package cn.edu.whut.hotelsystem.managesystem.ordermanage.daoimp;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IOlistDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Transactional
@Repository
public class OlistDAO extends BaseHibernateDAO<Olist> implements  IOlistDAO{
	
	public static final String INMEMO = "inmemo";
	public static final String INNUMBER = "innumber";
	public static final String INDAY = "inday";
	public static final String AMMOUNT = "ammount";
	public static final String ODEAL = "odeal";

	

	public OlistDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Olist> findByInmemo(Object inmemo) {
		return findByProperty(INMEMO, inmemo);
	}

	public List<Olist> findByInnumber(Object innumber) {
		return findByProperty(INNUMBER, innumber);
	}

	public List<Olist> findByInday(Object inday) {
		return findByProperty(INDAY, inday);
	}

	public List<Olist> findByAmmount(Object ammount) {
		return findByProperty(AMMOUNT, ammount);
	}

	public List<Olist> findByOdeal(Object odeal) {
		return findByProperty(ODEAL, odeal);
	}

	@Override
	public boolean saveOlist(Olist transientInstance) {
		// TODO Auto-generated method stub
		return save(transientInstance);
	}

	@Override
	public boolean deleteOlist(Olist persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public Olist findOlistById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<Olist> findOlistByExample(Olist instance) {
		// TODO Auto-generated method stub
		return findByExample(instance);
	}

	@Override
	public List<Olist> findOlistByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return findByProperty(propertyName, value);
	}

	@Override
	public List<Olist> findAllOlist() {
		// TODO Auto-generated method stub
		return findAll();
	}

	@Override
	public Olist mergeOlist(Olist detachedInstance) {
		// TODO Auto-generated method stub
		return merge(detachedInstance);
	}

	@Override
	public boolean attachDirtyOlist(Olist instance) {
		// TODO Auto-generated method stub
		return attachDirty(instance);
	}

	@Override
	public boolean attachCleanOlist(Olist instance) {
		// TODO Auto-generated method stub
		return attachClean(instance);
	}

	
}