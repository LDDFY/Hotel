package cn.edu.whut.hotelsystem.baseinfor.control;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.service.IUserService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Controller
public class UserAction {
	@Autowired
	private IUserService userService;
	@Autowired
	private IHotelService hotelService;

	@RequestMapping("/Login")
	public String Login(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			String uname, String upwd) {
		String note = "账号或密码错误请重新输入！";
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
		if (result.equals("public/login")) {
			model.addAttribute("note", note);
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

		User user = userService.findUserById(uid);
		List<Olist> userOlistLists = new ArrayList<Olist>();
		List<Olist> userBookingsLists = new ArrayList<Olist>();

		Iterator<Olist> olist = user.getOlistsForUid().iterator();
		while (olist.hasNext()) {
			userOlistLists.add(olist.next());

		}
		for (int i = 0; i < userOlistLists.size(); i++) {
			if (userOlistLists.get(i).getIndate()
					.after(java.sql.Date.valueOf(str)))
				userBookingsLists.add(userOlistLists.get(i));
		}
		model.addAttribute("userOlistLists", userOlistLists);
		model.addAttribute("userBookingsLists", userBookingsLists);
		return "user/user";
	}

	@RequestMapping("/findUserSize")
	public @ResponseBody int findUserSize(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) {

		List<User> userList = userService.findAllUser();
		JSONArray list = formatUser(userList);
		return list.size();
	}

	@RequestMapping("/ProListUser")
	public @ResponseBody JSONArray ProListUser(Integer pageindexs,
			Integer pageSize) {
		List<User> userList = userService.findAllUser();
		JSONArray list = formatUser(userList);
		int current = (pageindexs - 1) * pageSize;
		int totle = current + pageSize;
		if (totle > list.size()) {
			totle = list.size();
		}

		JSONArray userList1 = new JSONArray();
		for (int i = current; i < totle; i++) {
			userList1.add(list.get(i));
		}
		return userList1;
	}

	@RequestMapping("/findAdminSize")
	public @ResponseBody int Admin(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) {

		List<User> userList = userService.findAllUser();
		JSONArray list = formatAdmin(userList);
		return list.size();
	}

	@RequestMapping("/ProListAdmin")
	public @ResponseBody JSONArray ProListAdmin(Integer pageindexs,
			Integer pageSize) {
		List<User> userList = userService.findAllUser();
		JSONArray list = formatAdmin(userList);
		int current = (pageindexs - 1) * pageSize;
		int totle = current + pageSize;
		if (totle > list.size()) {
			totle = list.size();
		}

		JSONArray userList1 = new JSONArray();
		for (int i = current; i < totle; i++) {
			userList1.add(list.get(i));
		}
		return userList1;
	}

	@RequestMapping("/serchAdmin")
	public @ResponseBody JSONArray serchAdmin(String uname) {

		List<User> userList = userService.serchUserByUname(uname);
		JSONArray list = formatAdmin(userList);
		return list;
	}

	private JSONArray formatAdmin(List<User> userList) {
		JSONArray list = new JSONArray();
		for (User u : userList) {
			if (u.getLevel() == 1) {
				JSONObject j = new JSONObject();
				j.put("uid", u.getUid());
				j.put("uname", u.getUname());
				j.put("realname", u.getRealname());
				j.put("ugender", u.getUgender());
				j.put("utel", u.getUtel());
				j.put("uemail", u.getUemail());
				j.put("money", u.getMoney());
				list.add(j);
			}
		}
		return list;
	}

	private JSONArray formatUser(List<User> userList) {
		JSONArray list = new JSONArray();
		for (User u : userList) {
			if (u.getLevel() == 0) {
				JSONObject j = new JSONObject();
				j.put("uid", u.getUid());
				j.put("uname", u.getUname());
				j.put("realname", u.getRealname());
				j.put("ugender", u.getUgender());
				j.put("utel", u.getUtel());
				j.put("uemail", u.getUemail());
				j.put("money", u.getMoney());
				list.add(j);
			}
		}
		return list;
	}

	@RequestMapping("/serchUser")
	public @ResponseBody JSONArray serchUser(String uname) {

		List<User> userList = userService.serchUserByUname(uname);
		JSONArray list = formatUser(userList);
		return list;
	}

	@RequestMapping("/resetUser")
	public String resetUser(Model model, Integer uid) {
		String result = "重置密码失败！";
		boolean flag = userService.resetPassword(uid);
		if (flag) {
			result = "重置密码成功,请通知用户修改密码！";
		}
		model.addAttribute("result", result);
		return "user/userManager";
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

	@RequestMapping("/userManager")
	public String userManager() {

		return "user/userManager";
	}

	@RequestMapping("/AdninistratorManager")
	public String AdninistratorManager() {

		return "user/Administrator";
	}

	@RequestMapping("/registerUI")
	public String registerUI() {
		return "public/register";
	}

	@RequestMapping("/register")
	public String register(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response, User user) {
		user.setLevel(0);
		userService.saveOrUpdate(user);
		return "public/login";
	}

	@RequestMapping("/adminInfor")
	public String adminInfor(Model model, Integer uid) {
		User u = userService.findUserById(uid);
		Hotel h = hotelService.findHotelByUid(uid);
		model.addAttribute("admin", u);
		model.addAttribute("hotelname", h.getHname());
		return "user/adminInfor";
	}

	@RequestMapping("/addAdmin")
	@Transactional
	public String addAdmin(Model model, HttpServletRequest request,
			HttpServletResponse response, User u) {
		Integer hid = Integer.parseInt(request.getParameter("HotelID"));
		String result = "添加信息失败！";
		Hotel h = hotelService.loadHotel(hid);
		h.setUser(u);
		boolean flag = userService.saveOrUpdate(u);
		Hotel h1 = hotelService.mergeHotel(h);
		boolean hotelflag = hotelService.attachHocal(h1);
		if (flag && hotelflag) {
			result = "添加信息成功！";
		}
		model.addAttribute("result", result);
		return "user/Administrator";
	}

	@RequestMapping("/deleteAdmin")
	public String deleteAdmin(Integer uid, Model model) {
		String result = "删除信息失败！";
		boolean flag = userService.deleteUserByUid(uid);
		if (flag) {
			result = "删除信息成功！";
		}
		model.addAttribute("result", result);
		return "user/Administrator";
	}
}
