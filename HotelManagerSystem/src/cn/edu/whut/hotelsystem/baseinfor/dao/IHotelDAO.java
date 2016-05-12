package cn.edu.whut.hotelsystem.baseinfor.dao;

import java.util.List;

import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;


public interface IHotelDAO {
	
	
	public boolean saveHotel(Hotel transientInstance);

	public boolean deleteHotel(Hotel persistentInstance);

	public Hotel findHotelById(java.lang.Integer id);

	public List<Hotel> findHotelByExample(Hotel instance);

	public List<Hotel> findHotelByProperty(String propertyName, Object value);
	
	
	public List<Hotel> findAllHotel();

	public Hotel mergeHotel(Hotel detachedInstance);

	public boolean attachDirtyHotel(Hotel instance);
	
	public boolean attachCleanHotel(Hotel instance);
	
	
	public List<Hotel> findByHname(Object hname);

	public List<Hotel> findByHemail(Object hemail);

	public List<Hotel> findByHtel(Object htel);

	public List<Hotel> findByHprovince(Object hprovince);

	public List<Hotel> findByHcity(Object hcity);

	public List<Hotel> findByHaddr(Object haddr);

	public List<Hotel> findByGrand(Object grand);

	public List<Hotel> findByGuestratings(Object guestratings);
	public List<Hotel> findByReviews(Object reviews);

	public List<Hotel> findBySummary(Object summary);
	public List<Hotel> findByImagepath(Object imagepath);

	public List<Hotel> findByBrowsenumber(Object browsenumber);

	public List<Hotel> findByAvgprice(Object avgprice);

	
}