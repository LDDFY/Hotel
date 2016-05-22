package cn.edu.whut.hotelsystem.baseinfor.control;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IEvalutionService;

@Controller
public class HotelAction {

	@Autowired
	private IHotelService hotelService;

	@Autowired
	private IEvalutionService evalutionService;

	@RequestMapping("/aboutUI")
	public String aboutUI() {
		return "public/about";
	}

	@RequestMapping("/hotelDetailsUI")
	public String hotelDetailsUI(Model model, HttpSession session,

	HttpServletRequest request, HttpServletResponse response, Integer HotelID,
			String checkInData,

			String checkOutData) {

		Hotel hotel = hotelService.findHotelById(HotelID);
		List<Room> roomLists = new ArrayList<Room>(0);

		Iterator<Room> room = hotel.getRooms().iterator();
		while (room.hasNext()) {
			roomLists.add(room.next());
		}

		List<Room> roomList = new ArrayList<Room>(0);
		roomList.add(roomLists.get(0));
		for (Room r : roomLists) {
			int flag = 0;
			for (int i = 0; i < roomList.size(); i++) {
				if (r.getRpattern().equals(roomList.get(i).getRpattern())) {
					flag = 1;
				}
			}
			if (flag == 0)
				roomList.add(r);
		}

		double applauseRate = evalutionService
				.getCustomersApplauseRate(HotelID);
		double applause = evalutionService.getApplause(HotelID);

		model.addAttribute("hotel", hotel);
		model.addAttribute("roomLists", roomList);
		model.addAttribute("applauseRate", applauseRate);
		java.text.DecimalFormat df = new java.text.DecimalFormat("#.##");
		model.addAttribute("applause", df.format(applause * 100));
		model.addAttribute("checkInData", checkInData);
		model.addAttribute("checkOutData", checkOutData);

		return "hotel/hotelDetails";
	}

	@RequestMapping("/findHotelBylevel")
	public @ResponseBody List<Hotel> findHotelBylevel(Model model,
			HttpSession session, HttpServletRequest request,
			HttpServletResponse response, @RequestParam Integer level,
			@RequestParam Integer uid) {
		// 根据权限获取hotel

		List<Hotel> hotelList = hotelService.findHotelByLevel(uid, level);

		return hotelList;
	}

	@RequestMapping("/findAllHotel")
	public @ResponseBody List<Hotel> findAllHotel(Model model,
			HttpSession session, HttpServletRequest request,
			HttpServletResponse response) {

		List<Hotel> hotelList = hotelService.findAllHotel();
		hotelList = JsonFomart(hotelList);
		return hotelList;
	}

	private List<Hotel> JsonFomart(List<Hotel> hotelList) {

		for (int i = 0; i < hotelList.size(); i++) {

			hotelList.get(i).setEvaluations(null);
			hotelList.get(i).setNewses(null);
			hotelList.get(i).setRooms(null);
			hotelList.get(i).setOlists(null);
		}

		return hotelList;
	}

	@RequestMapping("/addHotel")
	public String addHotel(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			Hotel hotel) {

		String result = "添加酒店信息失败！";
		System.out.println(hotel.toString());
		boolean flag = hotelService.addHotel(hotel);
		if (flag) {
			result = "添加酒店信息成功！";
		}

		model.addAttribute("result", result);
		return "hotel/HotelManager";
	}

	@RequestMapping("/deleteHotel")
	public String deleteHotel(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			Integer hid) {
		String result = "删除酒店信息失败！";
		boolean flag = hotelService.deleteHotel(hid);
		if (flag) {
			result = "删除酒店信息成功！";
		}

		model.addAttribute("result", result);
		return "hotel/HotelManager";

	}

	@RequestMapping("/hotelInfor")
	public String hotelInfor(Model model, HttpServletRequest request,
			HttpServletResponse response, Integer hid) {

		Hotel hotel = hotelService.findHotelById(hid);
		model.addAttribute("hotel", hotel);
		return "hotel/details";
	}

	@RequestMapping("/modifyHotel")
	public String modifyHotel(Model model, HttpServletRequest request,
			HttpServletResponse response, Integer hid) {

		Hotel hotel = hotelService.findHotelById(hid);
		model.addAttribute("hotel", hotel);

		return "hotel/modifyhotel";
	}

	@RequestMapping("/updateHotel")
	public String updateHotel(Model model, HttpServletRequest request,
			HttpServletResponse response, Hotel hotel) {

		String result = "更新酒店信息成功！";
		Hotel h = hotelService.loadHotel(hotel.getHid());
		h = hotelService.mergeHotel(hotel);
		boolean flag = hotelService.attachHocal(h);
		if (flag) {
			result = "更新酒店信息成功！";
		}
		model.addAttribute("result", result);
		return "hotel/HotelManager";
	}

	@RequestMapping("/HotelManager")
	public String HotelManager() {

		return "hotel/HotelManager";
	}

	@RequestMapping("/pagination")
	public String pagination() {

		return "pagination";
	}

	@RequestMapping("/findHotelSize")
	public @ResponseBody int findHotelSize(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) {

		List<Hotel> hotelList = hotelService.findAllHotel();
		return hotelList.size();
	}

	@RequestMapping("/ProListHotel")
	public @ResponseBody List<Hotel> ProList(Integer pageindexs,
			Integer pageSize) {
		List<Hotel> hotelList=hotelService.ProList(pageindexs,pageSize);
		hotelList=JsonFomart(hotelList);
		return hotelList;
	}
}
