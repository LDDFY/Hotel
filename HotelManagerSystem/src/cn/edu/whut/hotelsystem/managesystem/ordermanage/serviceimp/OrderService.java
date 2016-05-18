package cn.edu.whut.hotelsystem.managesystem.ordermanage.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IOlistDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IOrderService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Service
public class OrderService implements IOrderService {
	@Autowired
	private IOlistDAO olistDAO;

	@Override
	public List<Olist> findOlistByExample(Integer hid) {
		String sql = "FROM Olist o WHERE o.hotel.hid=" + hid;
		
		return olistDAO.queryHQL(sql);
	}

	@Override
	public boolean deleteOrderByid(Integer oid) {
		// TODO Auto-generated method stub
		Olist o = olistDAO.findOlistById(oid);
		return olistDAO.deleteOlist(o);
	}

}
