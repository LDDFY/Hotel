package cn.edu.whut.hotelsystem.baseinfor.control;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;

@Controller
public class HotelAction {

	@Autowired
	private IHotelService hotelService;

	@RequestMapping("/hotelListUI")
	public String hotelListUI(Model model, String hcity) {
		List<Hotel> hotelLists = hotelService.findByHcity(hcity);
		model.addAttribute("hotelLists", hotelLists);
		return "hotel/hotelList1";
	}

	@RequestMapping("/aboutUI")
	public String aboutUI() {
		return "public/about";
	}

	@RequestMapping("/hotelDetailsUI")
	public String hotelDetailsUI(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			Integer hid) {
		Hotel hotel = hotelService.findHotelById(hid);
		model.addAttribute("hotel", hotel);
		return "hotel/hotelDetails";
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
