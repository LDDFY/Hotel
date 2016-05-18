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
		return roomDAO.findRoomByExample(room);
	}

	@Override
	public List<Room> findRoomByHid(Integer r) {
		// TODO Auto-generated method stub
		String sql = "FROM Room r WHERE r.hotel.hid=" + r;

		return roomDAO.queryRoomHQL(sql);
	}

	@Override
	public Room findRoomByid(Integer rid) {
		// TODO Auto-generated method stub
		return roomDAO.findRoomById(rid);
	}

	@Override
	public boolean saveRoom(Room r) {
		// TODO Auto-generated method stub
		return roomDAO.saveRoom(r);
	}

	public void callUpdateRoom() {
		roomDAO.callUpdateRoom();
	}

	public boolean deleteRoombyId(Integer rid) {
		// TODO Auto-generated method stub
		Room r=roomDAO.findRoomById(rid);
		return roomDAO.deleteRoom(r);
	}

	@Override
	public Room findRoomById(String rid) {
		// TODO Auto-generated method stub
		List<Room> roomList=roomDAO.findByRid(rid);
		return roomDAO.findRoomById(roomList.get(0).getRoomid());
	}
	
}
