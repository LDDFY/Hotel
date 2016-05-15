package cn.edu.whut.hotelsystem.baseinfor.control;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IUserService;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

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
			case 0:
				result = "user/user";
				break;
			case 1:
				result = "user/user";
				break;
			case 2:
				result = "user/manager";
				break;

			}
			session.setAttribute("user", user);
		}
		return result;
	}

	@RequestMapping(value = "/updateInfor", method = RequestMethod.POST)
	public @ResponseBody String updateInfor(String username,
			String userpassword, Integer userid) {
		String result = "修改密码失败！";
		User user = userService.loadUser(userid);
		user.setUpwd(userpassword);
		boolean flag = userService.saveOrUpdate(user);
		if (flag) {
			result = "修改密码成功！";
		}
		return result;
	}

	@RequestMapping("/userUI")
	public String userUI(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			Integer uid) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String str = format.format(new Date());
		
		User user=userService.findUserById(uid);
		List<Olist> userOlistLists=new ArrayList<Olist>();
		List<Olist> userBookingsLists=new ArrayList<Olist>();
		
		Iterator<Olist> olist=user.getOlistsForUid().iterator();
		while(olist.hasNext()){
			userOlistLists.add(olist.next());
			
		}
		for(int i=0;i<userOlistLists.size();i++){
			if(userOlistLists.get(i).getIndate().after(java.sql.Date.valueOf(str)))
				userBookingsLists.add(userOlistLists.get(i));
		}
		model.addAttribute("userOlistLists", userOlistLists);
		model.addAttribute("userBookingsLists", userBookingsLists);
		return "user/user";
	}

	@RequestMapping("/backManage")
	public String backManage() {
		return "user/manager";
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "public/login";
	}
	
}
