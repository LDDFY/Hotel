package cn.edu.whut.hotelsystem.baseinfor.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.baseinfor.dao.IRoomDAO;
import cn.edu.whut.hotelsystem.baseinfor.service.IRoomService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

@Service
public class RoomService implements IRoomService {
	@Autowired
	private IRoomDAO roomDAO;

	public List<Room> findRoomByExample(Room room) {
		// TODO Auto-generated method stub
		return null;
	}

}
