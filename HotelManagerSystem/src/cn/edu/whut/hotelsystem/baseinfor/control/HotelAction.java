package cn.edu.whut.hotelsystem.baseinfor.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;

@Controller
public class HotelAction {

	@Autowired
	private IHotelService hotelService;
	
	@RequestMapping("/hotelListUI")
	public String hotelListUI(Model model,String hcity){
		List<Hotel> hotelLists=hotelService.findByHcity(hcity);
		model.addAttribute("hotelLists", hotelLists);
		return "hotel/hotelList1";
	}
	
	@RequestMapping("/aboutUI")
	public String aboutUI(){
		return "public/about";
	}
	
	@RequestMapping("/hotelDetailsUI")
	public String hotelDetailsUI(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response,
			Integer hid){
		Hotel hotel=hotelService.findHotelById(hid);
		model.addAttribute("hotel", hotel);
		return "hotel/hotelDetails";
	}
}
