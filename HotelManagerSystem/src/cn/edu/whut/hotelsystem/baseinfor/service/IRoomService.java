package cn.edu.whut.hotelsystem.baseinfor.service;

import java.util.List;

import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

public interface IRoomService {

	public List<Room> findRoomByExample(Room room);

	public List<Room> findRoomByHid(Integer r);

	public Room findRoomByid(Integer rid);

	public boolean saveRoom(Room r);

	public void callUpdateRoom();

	public boolean deleteRoombyId(Integer rid);

	public Room findRoomById(String rid);

}
