package cn.edu.whut.hotelsystem.baseinfor.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.baseinfor.dao.IUserDAO;
import cn.edu.whut.hotelsystem.baseinfor.service.IUserService;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;

@Service
public class UserService implements IUserService {
	@Autowired
	private IUserDAO userDAO;

	public User Login(String uname, String upwd) {

		return userDAO.Login(uname, upwd);
	}

	@Override
	public boolean saveOrUpdate(User user) {
		// TODO Auto-generated method stub

		return userDAO.saveOrUpdateUser(user);
	}

	@Override
	public User loadUser(Integer userid) {
		// TODO Auto-generated method stub
		return userDAO.loadUser(userid);
	}

	@Override
	public User findUserById(Integer uid) {
		// TODO Auto-generated method stub
		return userDAO.findUserById(uid);
	}

	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return userDAO.findAllUser();
	}

	@Override
	public boolean resetPassword(Integer uid) {
		// TODO Auto-generated method stub
		User u = userDAO.loadUser(uid);
		u.setUpwd(u.getUname());
		return userDAO.saveOrUpdateUser(u);
	}

	@Override
	public List<User> serchUserByUname(String uname) {
		// TODO Auto-generated method stub
		return userDAO.findByUname(uname);
	}

}
