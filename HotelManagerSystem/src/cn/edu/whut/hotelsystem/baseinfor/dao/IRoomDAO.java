package cn.edu.whut.hotelsystem.baseinfor.dao;

import java.util.List;

import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

public interface IRoomDAO {
	public void callUpdateRoom();

	public List<Room> queryRoomSQL(String sql);

	public List<Room> queryRoomHQL(String sql);

	public boolean saveRoom(Room transientInstance);

	public boolean deleteRoom(Room persistentInstance);

	public Room findRoomById(java.lang.Integer id);

	public List<Room> findRoomByExample(Room instance);

	public List<Room> findRoomByProperty(String propertyName, Object value);

	public List<Room> findAllRoom();

	public Room mergeRoom(Room detachedInstance);

	public boolean attachDirtyRoom(Room instance);

	public boolean attachCleanRoom(Room instance);

	public List<Room> findByRid(Object rid);

	public List<Room> findByRtype(Object rtype);

	public List<Room> findByRarea(Object rarea);

	public List<Room> findByRprice(Object rprice);

	public List<Room> findByRpattern(Object rpattern);

	public List<Room> findByCustoms(Object customs);

	public List<Room> findByRstatus(Object rstatus);

}