package cn.edu.whut.hotelsystem.news.daoimp;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.news.dao.IEmailDAO;
import cn.edu.whut.hotelsystem.news.vo.Email;
import java.util.List;


public class EmailDAO extends BaseHibernateDAO<Email> implements IEmailDAO{
	
	public static final String CONTENT = "content";
	public static final String STATUS = "status";

	

	public List<Email> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<Email> findByStatus(Object status) {
		return findByProperty(STATUS, status);
	}

	@Override
	public Email findById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	
}