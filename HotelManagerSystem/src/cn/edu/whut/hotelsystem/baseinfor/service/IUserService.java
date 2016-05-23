package cn.edu.whut.hotelsystem.baseinfor.service;

import java.util.List;

import cn.edu.whut.hotelsystem.baseinfor.vo.User;

public interface IUserService {

	public User Login( String uname,String upwd);
	
	public boolean saveOrUpdate(User user);

	public User loadUser(Integer userid);

	public User findUserById(Integer uid);

	public List<User> findAllUser();

	public boolean resetPassword(Integer uid);

	public List<User> serchUserByUname(String uname);

	public User findUserByName(String uname);

	public boolean deleteUserByUid(Integer uid);
}
