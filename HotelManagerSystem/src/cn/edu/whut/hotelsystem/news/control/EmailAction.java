package cn.edu.whut.hotelsystem.news.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmailAction {

	@RequestMapping("/goContact")
	public String goContact() {

		return "public/contact";
	}

	@RequestMapping("/mailManager")
	public String mailManager() {
		return "mail/mailManager";
	}
}
