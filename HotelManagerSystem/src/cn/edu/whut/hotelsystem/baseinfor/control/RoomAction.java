package cn.edu.whut.hotelsystem.baseinfor.control;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.whut.hotelsystem.basedao.ImageUtil;
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
	@Autowired
	private ImageUtil imageUtil;

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
		return "room/roomdetails";
	}

	@RequestMapping("/addRoom")
	public String addRoom(
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, HttpServletResponse response,
			Model model, Room r) {
		String result = "增加房间信息失败！";
		String Address = imageUtil.addImage(file, request);
		String hid1 = request.getParameter("hid");
		Integer hid = Integer.parseInt(hid1);
		Hotel h = HotelService.loadHotel(hid);
		r.setHotel(h);
		r.setImagepath(Address);
		boolean flag = roomService.saveRoom(r);
		if (flag) {
			result = "增加房间信息成功！";
			roomService.callUpdateRoom();
		}
		model.addAttribute("result", result);
		return "room/RoomManager";
	}

	@RequestMapping("/deleteRoom")
	public @ResponseBody String deleteRoom(HttpServletRequest request,
			Integer rid) {
		Room r = roomService.findRoomByid(rid);
		if (r.getImagepath() != null || r.getImagepath() != "") {
			try {
				imageUtil.deleteFile(r.getImagepath(), request);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		String result = "删除房间信息失败！";
		boolean flag = roomService.deleteRoombyId(rid);
		if (flag) {
			result = "删除房间信息成功！";
			roomService.callUpdateRoom();
		}
		return result;
	}

	@RequestMapping("/RoomManager")
	public String RoomManager() {
		return "room/RoomManager";
	}

	@RequestMapping("/modifyRoom")
	public String modifyHotel(Model model, HttpServletRequest request,
			HttpServletResponse response, Integer rid) {

		Room room = roomService.findRoomByid(rid);

		model.addAttribute("room", room);

		return "room/modifyRoom";
	}

	@RequestMapping("/updateRoom")
	public String updateRoom(
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, Room room, String hotelId, Model model) {
		String result = "更改信息失败！";
		Integer hid = Integer.parseInt(hotelId);
		
		Hotel h = HotelService.findHotelById(hid);
		room.setHotel(h);
		String Address = imageUtil.updateImage(file, request,
				room.getImagepath());
		room.setImagepath(Address);
		boolean flag = roomService.updateRoom(room);
		if (flag) {
			result = "更改信息成功！";
		}
		model.addAttribute("result", result);
		return "room/RoomManager";
	}

	@RequestMapping("/findRoomSize")
	public @ResponseBody int findRoomSize(Integer hid) {

		List<Room> roomList = roomService.findRoomByHid(hid);

		return roomList.size();
	}

	@RequestMapping("/ProListRoom")
	public @ResponseBody List<Room> ProListRoom(Integer hid,
			Integer pageindexs, Integer pageSize) {
		List<Room> roomList = roomService.findRoomByHid(hid);

		int current = (pageindexs - 1) * pageSize;
		int totle = current + pageSize;
		if (totle > roomList.size()) {
			totle = roomList.size();
		}
		return roomList.subList(current, totle);
	}

}
