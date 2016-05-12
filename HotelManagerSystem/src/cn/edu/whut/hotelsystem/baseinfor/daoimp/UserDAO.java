package cn.edu.whut.hotelsystem.baseinfor.daoimp;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.baseinfor.dao.IUserDAO;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;

@Transactional
@Repository
public class UserDAO extends BaseHibernateDAO<User> implements IUserDAO {

	public static final String UNAME = "uname";
	public static final String UPWD = "upwd";
	public static final String REALNAME = "realname";
	public static final String UGENDER = "ugender";
	public static final String IDNUMBER = "idnumber";
	public static final String UTEL = "utel";
	public static final String UEMAIL = "uemail";
	public static final String LEVEL = "level";
	public static final String MONEY = "money";

	public UserDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<User> findByUname(Object uname) {

		return findByProperty(UNAME, uname);
	}

	public List<User> findByUpwd(Object upwd) {
		return findByProperty(UPWD, upwd);
	}

	public List<User> findByRealname(Object realname) {
		return findByProperty(REALNAME, realname);
	}

	public List<User> findByUgender(Object ugender) {
		return findByProperty(UGENDER, ugender);
	}

	public List<User> findByIdnumber(Object idnumber) {
		return findByProperty(IDNUMBER, idnumber);
	}

	public List<User> findByUtel(Object utel) {
		return findByProperty(UTEL, utel);
	}

	public List<User> findByUemail(Object uemail) {
		return findByProperty(UEMAIL, uemail);
	}

	public List<User> findByLevel(Object level) {
		return findByProperty(LEVEL, level);
	}

	public List<User> findByMoney(Object money) {
		return findByProperty(MONEY, money);
	}

	@Override
	public boolean saveUser(User transientInstance) {
		// TODO Auto-generated method stub
		return save(transientInstance);
	}

	@Override
	public boolean deleteUser(User persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public User findUserById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<User> findUserByExample(User instance) {
		// TODO Auto-generated method stub
		return findUserByExample(instance);
	}

	@Override
	public List<User> findUserByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User mergeUser(User detachedInstance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean attachDirtyUser(User instance) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean attachCleanUser(User instance) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User Login(String uname, String upwd) {
		// TODO Auto-generated method stub
		String hql = "FROM User u WHERE u.uname=? AND u.upwd=?";
		Query sqlQuery = getSession().createQuery(hql);
		sqlQuery.setParameter(0, uname);
		sqlQuery.setParameter(1, upwd);
		@SuppressWarnings("unchecked")
		List<User> userList = sqlQuery.list();
		if (!userList.isEmpty()) {
			return userList.get(0);
		} else
			return null;
	}

}