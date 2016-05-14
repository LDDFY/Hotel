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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.service.IRoomService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

@Controller
public class HotelAction {

	@Autowired
	private IHotelService hotelService;

	@RequestMapping("/hotelListUI")
	public String hotelListUI(Model model, String hcity, String checkInData,
			String checkOutData) {
		List<Hotel> hotelLists = hotelService.findByHcity(hcity);
		model.addAttribute("hotelLists", hotelLists);
		model.addAttribute("count", hotelLists.size());
		model.addAttribute("hcity", hcity);
		model.addAttribute("checkInData", checkInData);
		model.addAttribute("checkOutData", checkOutData);
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
		
		for(int j=0;j<hotel.getRooms().size();j++)
		{
			Room r=new Room();
			r=hotel.getRooms().iterator().next();
			if(j==0)
			roomLists.add(r);
			else
			for(int i=0;i<roomLists.size();i++)
			{
				if(!(r.getRpattern().equals(roomLists.get(i).getRpattern())))
					roomLists.add(r);
				System.out.println(r.getRpattern());
			}
		}
		
		model.addAttribute("hotel", hotel);
		
		model.addAttribute("roomLists", roomLists);
		return "hotel/hotelDetails";
	}
}
