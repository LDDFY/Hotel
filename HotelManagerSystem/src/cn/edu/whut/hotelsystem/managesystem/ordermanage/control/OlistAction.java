package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.service.IRoomService;
import cn.edu.whut.hotelsystem.baseinfor.service.IUserService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IOlistService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Controller
public class OlistAction {
	/*
	 * @Autowired IOlistDAO i;
	 */
	@Autowired
	private IHotelService hotelService;
	@Autowired
	private IUserService userService;
	@Autowired
	private IRoomService roomService;
	@Autowired
	private IOlistService olistService;

	@RequestMapping("/bookingRoom")
	public String bookingRoom(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			Olist olist, Integer userid, Integer hid, Integer roomid)
			throws ParseException {
		String result = "user/payment";
		String indate = request.getParameter("indate");
		String outdate = request.getParameter("outdate");

		SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
		Date in = sp.parse(formate(indate));
		Date out = sp.parse(formate(outdate));

		Hotel hotel = hotelService.findHotelById(hid);
		Room room = roomService.findRoomByid(roomid);

		if (userid != null) {
			User user = userService.findUserById(userid);
			olist.setUserByUid(user);
			olist.setHotel(hotel);
			olist.setRoom(room);
			olist.setOutdate(out);
			olist.setIndate(in);
			session.setAttribute("olistinfor", olist);
			return result;
		} else {
			olist.setHotel(hotel);
			olist.setRoom(room);
			olist.setOutdate(out);
			olist.setIndate(in);
			session.setAttribute("olistinfor", olist);
			return result;
		}
	}

	private String formate(String indate) {
		String[] s = indate.split("/");
		String sd = s[2] + "-" + s[0] + "-" + s[1];
		return sd;
	}

	@RequestMapping("/SubmitRoom")
	@Transactional
	public String SubmitRoom(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			String uname, String upwd) {

		String result = null;
		Olist olist = (Olist) session.getAttribute("olistinfor");
		User u = userService.findUserByName(uname);
		if (u == null) {
			result = "用户名错误！";
		} else if (!u.getUpwd().equals(upwd)) {
			result = "密码错误！";
		} else if (u.getMoney() < olist.getAmmount()) {

			result = "余额不足！";
		} else if (olist.getUserByUid() == null) {
			olist.setUserByUid(u);
		} else if (u.getMoney() >= olist.getAmmount()) {

			u.setMoney(u.getMoney() - olist.getAmmount());
			boolean userflag = userService.saveOrUpdate(u);
			boolean flag = olistService.saveOlist(olist);
			if (flag && userflag) {
				
				result = "预定成功！";
			} else {
				result = "预定失败！";
			}
		}
		model.addAttribute("result", result);
		return "user/payment";
	}

	@RequestMapping("/orderLoginLogin")
	public String orderLogin(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			String uname, String upwd) {
		String result = null;

		User user = userService.Login(uname, upwd);

		if (user == null) {
			result = "用户名或密码错误，请重新登陆";
			model.addAttribute("loginResult", result);

		} else {
			session.setAttribute("user", user);
			SubmitRoom(model, session, request, response, uname, upwd);

		}

		return "user/payment";
	}
}
