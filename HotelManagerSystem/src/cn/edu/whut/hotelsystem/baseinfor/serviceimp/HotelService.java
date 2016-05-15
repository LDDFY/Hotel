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

	@Override
	public List<Hotel> findAllHotel() {
		// TODO Auto-generated method stub
		return hotelDAO.findAllHotel();
	}

	@Override
	public boolean addHotel(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelDAO.saveHotel(hotel);
	}

	@Override
	public boolean deleteHotel(Integer hid) {
		// TODO Auto-generated method stub
		Hotel h = hotelDAO.findHotelById(hid);
		return hotelDAO.deleteHotel(h);
	}

	@Override
	public Hotel loadHotel(Integer hid) {
		// TODO Auto-generated method stub
		return hotelDAO.loadHotel(hid);
	}

	@Override
	public Hotel mergeHotel(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelDAO.mergeHotel(hotel);
	}

	@Override
	public boolean attachHocal(Hotel hotel) {
		// TODO Auto-generated method stub
		return hotelDAO.attachDirtyHotel(hotel);
	}

	@Override
	public List<Hotel> findHotelByLevel(Integer uid,Integer level) {
		// TODO Auto-generated method stub
		String Hql="FROM Hotel";
		if( level==1)
		{
			Hql="FROM Hotel u WHERE u.user.uid="+uid;
		}
		System.out.println(Hql);
		return hotelDAO.queryHotel(Hql);
	
	}

	
}
