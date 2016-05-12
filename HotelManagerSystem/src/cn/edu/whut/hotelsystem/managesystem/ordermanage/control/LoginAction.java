package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAction {

	@RequestMapping("/Login")
	public String loginAccount()
	{
		
		return "user/profile";
/*		return "user/manager";
*/	}
}
