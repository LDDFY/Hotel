package cn.edu.whut.hotelsystem.baseinfor.control;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.service.IRoomService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

@Controller
public class RoomAction {
	@Autowired
	private IRoomService roomService;
	@Autowired
	private IHotelService HotelService;
	
	@RequestMapping("/findRoomByHid")
	public @ResponseBody List<Room> findRoomByHid(Integer hid) {
		System.out.println("asdasdasdasdas" + hid);
        List<Room> roomList=roomService.findRoomByHid(hid);
      
        for(int i=0;i< roomList.size();i++)
        {
        	roomList.get(i).setOlists(null);
        	
        }
		return roomList;
	}
}
