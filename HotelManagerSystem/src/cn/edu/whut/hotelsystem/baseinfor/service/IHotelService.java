package cn.edu.whut.hotelsystem.baseinfor.service;

import java.util.List;

import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;

public interface IHotelService {

	public List<Hotel> findByHcity(String hcity);
	
	public Hotel findHotelById(Integer id);
	
	public List<Hotel> findAllHotel();

	public boolean addHotel(Hotel hotel);

	public boolean deleteHotel(Integer hid);

	public Hotel loadHotel(Integer hid);

	public Hotel mergeHotel(Hotel hotel);

	public boolean attachHocal(Hotel hotel);

	public List<Hotel> findHotelByLevel(Integer level,Integer uid);
}
