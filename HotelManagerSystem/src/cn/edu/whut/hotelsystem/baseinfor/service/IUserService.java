package cn.edu.whut.hotelsystem.baseinfor.service;

import cn.edu.whut.hotelsystem.baseinfor.vo.User;

public interface IUserService {

	public User Login( String uname,String upwd);
	
	public boolean saveOrUpdate(User user);

	public User loadUser(Integer userid);
}
