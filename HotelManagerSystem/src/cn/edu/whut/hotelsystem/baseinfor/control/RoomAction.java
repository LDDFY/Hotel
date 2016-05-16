package cn.edu.whut.hotelsystem.baseinfor.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.service.IRoomService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

@Controller
public class RoomAction {
	@Autowired
	private IRoomService roomService;
	@Autowired
	private IHotelService HotelService;

	@RequestMapping("/findRoomByHid")
	public @ResponseBody List<Room> findRoomByHid(Integer hid) {

		List<Room> roomList = roomService.findRoomByHid(hid);
		return roomList;
	}

	@RequestMapping("/roomInfor")
	public String roomInfor(Model model, HttpServletRequest request,
			HttpServletResponse response, Integer rid) {
		Room room = roomService.findRoomByid(rid);
		model.addAttribute("room", room);
		return "user/roomdetails";
	}

	@RequestMapping("/addRoom")
	public @ResponseBody String addRoom(HttpServletRequest request, Room r) {
		String result = "增加房间信息失败！";
		Integer hid = Integer.parseInt(request.getParameter("hid"));
		Hotel h = HotelService.loadHotel(hid);
		r.setHotel(h);
	
		boolean flag = roomService.saveRoom(r);
		if (flag) {
			result = "增加房间信息成功！";
			roomService.callUpdateRoom();
		}

		return result;
	}
	@RequestMapping("/deleteRoom")
	public @ResponseBody String deleteRoom(HttpServletRequest request, Integer rid){
		
		String result = "删除房间信息失败！";
		boolean flag = roomService.deleteRoombyId(rid);
		if (flag) {
			result = "删除房间信息成功！";
			roomService.callUpdateRoom();
		}
		return result;
	}
}
