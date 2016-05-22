package cn.edu.whut.hotelsystem.news.daoimp;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.news.dao.IEmailDAO;
import cn.edu.whut.hotelsystem.news.vo.Email;

import java.util.List;

public class EmailDAO extends BaseHibernateDAO<Email> implements IEmailDAO {

	@Override
	public boolean saveEmail(Email transientInstance) {
		// TODO Auto-generated method stub
		return save(transientInstance);
	}

	@Override
	public boolean deleteEmail(Email persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public Email findEmailById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<Email> findAllEmail() {
		// TODO Auto-generated method stub
		return findAll();
	}

}