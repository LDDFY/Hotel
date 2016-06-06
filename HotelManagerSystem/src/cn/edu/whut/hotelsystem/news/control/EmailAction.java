package cn.edu.whut.hotelsystem.news.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.whut.hotelsystem.news.service.IEmailService;
import cn.edu.whut.hotelsystem.news.vo.Email;

@Controller
public class EmailAction {

	@Autowired
	private IEmailService emailService;

	@RequestMapping("/goContact")
	public String goContact() {

		return "public/contact";
	}

	@RequestMapping("/unRead")
	public String unRead(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		List<Email> emailList = emailService.findUread();

		model.addAttribute("emailList", emailList);

		return "mail/mailManager";
	}

	@RequestMapping("/mailManager")
	public String mailManager(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		List<Email> emailList = emailService.findAllEmail();

		model.addAttribute("emailList", emailList);

		return "mail/mailManager";
	}

	@RequestMapping("/deleteEmail")
	public String deleteEmail(Integer id, Model model,
			HttpServletRequest request, HttpServletResponse response) {

		String result = "删除信息失败！";

		boolean flag = emailService.deleteEmail(id);
		if (flag) {
			result = "删除信息成功！";
		}
		List<Email> emailList = emailService.findAllEmail();
		model.addAttribute("emailList", emailList);
		model.addAttribute("result", result);

		return "mail/mailManager";
	}

	@RequestMapping("/readEmail")
	public String readEmail(Integer id, Model model,
			HttpServletRequest request, HttpServletResponse response) {

		emailService.readEmail(id);
		List<Email> emailList = emailService.findAllEmail();
		model.addAttribute("emailList", emailList);
		return "mail/mailManager";
	}

	@RequestMapping("/sendEmail")
	// Email email
	public String sendEmail(String name, String tel, String email,
			String content, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		String result = "发送邮件信息失败，请重试！";
	
		Email email1 = new Email();
		email1.setContent(content);
		email1.setName(name);
		email1.setTel(tel);
		email1.setEmail(email);
		email1.setStatus(0);
		boolean flag = emailService.addEmail(email1);

		if (flag) {
			result = "发送邮件信息成功！";
		}
		model.addAttribute("result", result);
		return "public/contact";
	}

}
