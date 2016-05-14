package cn.edu.whut.hotelsystem.baseinfor.control;

import javax.xml.ws.RequestWrapper;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelAction {

	@RequestMapping("/hotelListUI")
	public String hotelListUI(){
		return "hotel/hotelList1";
	}
	
	@RequestMapping("/aboutUI")
	public String aboutUI(){
		return "public/about";
	}
	
	@RequestMapping("/hotelDetailsUI")
	public String hotelDetailsUI(){
		
		return "hotel/hotelDetails";
	}
}
