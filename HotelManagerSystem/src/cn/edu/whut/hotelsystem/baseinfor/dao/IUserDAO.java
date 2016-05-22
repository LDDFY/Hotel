package cn.edu.whut.hotelsystem.baseinfor.dao;

import java.util.List;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;

public interface IUserDAO {

	public User loadUser(Integer uid);

	public User Login(String uname, String upwd);

	public boolean saveUser(User transientInstance);

	public boolean deleteUser(User persistentInstance);

	public User findUserById(java.lang.Integer id);

	public List<User> findUserByExample(User instance);

	public List<User> findUserByProperty(String propertyName, Object value);

	public List<User> findAllUser();

	public User mergeUser(User detachedInstance);

	public boolean attachDirtyUser(User instance);

	public boolean attachCleanUser(User instance);

	public List<User> findByUname(Object uname);

	public List<User> findByUpwd(Object upwd);

	public List<User> findByUgender(Object ugender);

	public List<User> findByIdnumber(Object idnumber);

	public List<User> findByUtel(Object utel);

	public List<User> findByLevel(Object level);

	public List<User> findByMoney(Object money);

	public boolean saveOrUpdateUser(User u);
}