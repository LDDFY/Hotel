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

	@RequestMapping("/hotelListUI")
	public String hotelListUI(Model model, String hcity, String checkInData,

			String checkOutData,String keyWords) {
		String[] city = hcity.split(",");
		hcity=city[0];
		System.out.println(hcity);
		List<Hotel> hotelLists = hotelService.findByHcity(hcity);
		model.addAttribute("hotelLists", hotelLists);
		model.addAttribute("count", hotelLists.size());
		model.addAttribute("hcity", hcity);
		model.addAttribute("checkInData", checkInData);
		model.addAttribute("checkOutData", checkOutData);
		model.addAttribute("keyWords", keyWords);
		return "hotel/hotelList1";
	}

	@RequestMapping("/aboutUI")
	public String aboutUI() {
		return "public/about";
	}

	@RequestMapping("/hotelDetailsUI")
	public String hotelDetailsUI(Model model, HttpSession session,

			HttpServletRequest request, HttpServletResponse response,Integer hid) {
		
		Hotel hotel=hotelService.findHotelById(hid);
		List<Room> roomLists=new ArrayList<Room>(0);
		
		Iterator<Room> room=hotel.getRooms().iterator();
		while(room.hasNext()){
				roomLists.add(room.next());
		}

		System.out.println(hid);
		double applauseRate = evalutionService.getCustomersApplauseRate(hid);
		double applause = evalutionService.getApplause(hid);

		model.addAttribute("hotel", hotel);
		model.addAttribute("roomLists", roomLists);
		model.addAttribute("applauseRate", applauseRate);
		model.addAttribute("applause", applause * 100);

		return "hotel/hotelDetails";
	}

	@RequestMapping("/findHotelBylevel")
	public @ResponseBody List<Hotel> findHotelBylevel(Model model,
			HttpSession session, HttpServletRequest request,
			HttpServletResponse response,@RequestParam Integer level,@RequestParam Integer uid) {
		// 根据权限获取hotel
		
		List<Hotel> hotelList = hotelService.findHotelByLevel(uid,level);
	
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
		return "user/manager";
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
		return "user/manager";

	}

	@RequestMapping("/hotelInfor")
	public String hotelInfor(Model model, HttpServletRequest request,
			HttpServletResponse response, Integer hid) {

		Hotel hotel = hotelService.findHotelById(hid);
		model.addAttribute("hotel", hotel);
		return "user/details";
	}

	@RequestMapping("/modifyHotel")
	public String modifyHotel(Model model, HttpServletRequest request,
			HttpServletResponse response, Integer hid) {

		Hotel hotel = hotelService.findHotelById(hid);
		model.addAttribute("hotel", hotel);

		return "user/modifyhotel";
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
		return "user/manager";
	}

}
