package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String bookingRoom(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, Olist olist, Integer userid,
			Integer hid, Integer roomid) throws ParseException {
		String result = "public/login";
		String indate = request.getParameter("indate");
		String outdate = request.getParameter("outdate");

		SimpleDateFormat sp = new SimpleDateFormat("yyyy-mm-dd");
		Date in = sp.parse(formate(indate));
		Date out = sp.parse(formate(outdate));
		Hotel hotel = hotelService.findHotelById(hid);
		Room room = roomService.findRoomByid(roomid);

		if (userid != null) {
			User user = userService.findUserById(userid);
			olist.setUserByUid(user);
			result = "user/payment";
		} else {
			return result;
		}
		olist.setHotel(hotel);
		olist.setRoom(room);
		olist.setOutdate(out);
		olist.setIndate(in);
		olistService.saveOlist(olist);

		return result;
	}

	private String formate(String indate) {
		String[] s = indate.split("/");
		String sd = s[2] + "-" + s[0] + "-" + s[1];
		return sd;
	}

}
