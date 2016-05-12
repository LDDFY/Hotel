package cn.edu.whut.hotelsystem.baseinfor.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.whut.hotelsystem.baseinfor.service.IUserService;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;

@Controller
public class UserAction {
	@Autowired
	private IUserService userService;

	@RequestMapping("/Login")
	public String Login(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			String uname, String upwd) {

		String result = "public/login";
		User user = userService.Login(uname, upwd);
		if (user != null) {

			switch (user.getLevel()) {
			case 0:result = "user/user";
				break;
			case 1:result = "user/user";
				break;
			case 2:result = "user/manager";
				break;

			}
			model.addAttribute("user", user);
		}
		return result;
	}
}
