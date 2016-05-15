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

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.daoimp.EvaluationDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IEvalutionService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.serviceimp.EvalutionService;

@Controller
public class HotelAction {

	@Autowired
	private IHotelService hotelService;
//	private IEvalutionService evalutionService;
	@Autowired
	private IEvalutionService evalutionService;

	@RequestMapping("/hotelListUI")
	public String hotelListUI(Model model, String hcity, String checkInData,
			String checkOutData,String keyWords) {
		if(hcity!=null)
			hcity=hcity.substring(0, hcity.length()-1);
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
			HttpServletRequest request, HttpServletResponse response,
			Integer hid){
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
		model.addAttribute("applause", applause*100);
		
		return "hotel/hotelDetails";
	}
}
