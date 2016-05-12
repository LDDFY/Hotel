package cn.edu.whut.hotelsystem.baseinfor.serviceimp;

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

}
