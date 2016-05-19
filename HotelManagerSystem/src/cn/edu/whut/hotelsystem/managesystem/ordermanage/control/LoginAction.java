package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginAction {
	/*
	 * @Autowired IOlistDAO i;
	 */

	@RequestMapping("/loginUI")
	public String loginUI() {

		return "public/login";
	}
	
	@RequestMapping("/paymentUI")
	public String paymentUI(){
		return "user/payment";
	}
	
}
