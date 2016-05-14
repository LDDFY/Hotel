package cn.edu.whut.hotelsystem.baseinfor.service;

import java.util.List;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;

public interface IHotelService {

	public List<Hotel> findByHcity(String hcity);
	
	public Hotel findHotelById(Integer hid);
}
