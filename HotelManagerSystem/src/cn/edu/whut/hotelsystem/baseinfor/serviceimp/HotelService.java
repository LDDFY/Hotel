package cn.edu.whut.hotelsystem.baseinfor.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.baseinfor.dao.IHotelDAO;
import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;

@Service
public class HotelService implements IHotelService {
	@Autowired
	private IHotelDAO hotelDAO;

	public List<Hotel> findByHcity(String hcity) {
		return hotelDAO.findByHcity(hcity);
	}

	@Override
	public Hotel findHotelById(Integer hid) {
		// TODO Auto-generated method stub
		return hotelDAO.findHotelById(hid);
	}

}
