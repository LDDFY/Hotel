package cn.edu.whut.hotelsystem.managesystem.ordermanage.dao;


import java.util.List;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

public interface IOlistDAO  {
	
	public boolean saveOlist(Olist transientInstance);
	public boolean deleteOlist(Olist persistentInstance);

	public Olist findOlistById(java.lang.Integer id);

	public List<Olist> findOlistByExample(Olist instance);

	public List<Olist> findOlistByProperty(String propertyName, Object value);

	public List<Olist> findAllOlist();
	public Olist mergeOlist(Olist detachedInstance);

	public boolean attachDirtyOlist(Olist instance);
	public boolean attachCleanOlist(Olist instance);
	
	
	public List<Olist> findByInmemo(Object inmemo);

	public List<Olist> findByInnumber(Object innumber);

	public List<Olist> findByInday(Object inday);

	public List<Olist> findByAmmount(Object ammount);

	public List<Olist> findByOdeal(Object odeal);

	
}