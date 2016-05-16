package cn.edu.whut.hotelsystem.baseinfor.daoimp;


import java.util.List;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.baseinfor.dao.IRoomDAO;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;

@Transactional
@Repository
public class RoomDAO extends BaseHibernateDAO<Room> implements IRoomDAO {

	public static final String RID = "rid";
	public static final String RTYPE = "rtype";
	public static final String RAREA = "rarea";
	public static final String RPRICE = "rprice";
	public static final String RPATTERN = "rpattern";
	public static final String CUSTOMS = "customs";
	public static final String RSTATUS = "rstatus";

	public RoomDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Room> findByRid(Object rid) {
		return findByProperty(RID, rid);
	}

	public List<Room> findByRtype(Object rtype) {
		return findByProperty(RTYPE, rtype);
	}

	public List<Room> findByRarea(Object rarea) {
		return findByProperty(RAREA, rarea);
	}

	public List<Room> findByRprice(Object rprice) {
		return findByProperty(RPRICE, rprice);
	}

	public List<Room> findByRpattern(Object rpattern) {
		return findByProperty(RPATTERN, rpattern);
	}

	public List<Room> findByCustoms(Object customs) {
		return findByProperty(CUSTOMS, customs);
	}

	public List<Room> findByRstatus(Object rstatus) {
		return findByProperty(RSTATUS, rstatus);
	}

	@Override
	public boolean saveRoom(Room transientInstance) {
		// TODO Auto-generated method stub
		
		return save(transientInstance);
	}

	@Override
	public boolean deleteRoom(Room persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public Room findRoomById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<Room> findRoomByExample(Room instance) {
		// TODO Auto-generated method stub
		return findByExample(instance);
	}

	@Override
	public List<Room> findRoomByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return findByProperty(propertyName, value);
	}

	@Override
	public List<Room> findAllRoom() {
		// TODO Auto-generated method stub
		return findAll();
	}

	@Override
	public Room mergeRoom(Room detachedInstance) {
		// TODO Auto-generated method stub
		return merge(detachedInstance);
	}

	@Override
	public boolean attachDirtyRoom(Room instance) {
		// TODO Auto-generated method stub
		return attachDirty(instance);
	}

	@Override
	public boolean attachCleanRoom(Room instance) {
		// TODO Auto-generated method stub
		return attachClean(instance);
	}

	public List<Room> queryRoomSQL(String sql) {

		return querySQL(sql);
	}

	public List<Room> queryRoomHQL(String sql) {

		return queryHQL(sql);
	}
	
	public void callUpdateRoom()
	{
		
		String sql="{call updateroom()}";
		
		SQLQuery sqlquery = getSession().createSQLQuery(sql);
		sqlquery.executeUpdate();
		System.out.println("更新房间信息成功！");
	}
}