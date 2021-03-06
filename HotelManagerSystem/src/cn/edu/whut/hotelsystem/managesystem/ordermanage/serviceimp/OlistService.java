package cn.edu.whut.hotelsystem.managesystem.ordermanage.serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IOlistDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IOlistService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Service
public class OlistService implements IOlistService {
	@Autowired
	private IOlistDAO olistDAO;

	@Override
	public boolean saveOlist(Olist olist) {
		return olistDAO.saveOlist(olist);
	}

	@Override
	public void deleteByOid(Integer oid) {
		olistDAO.deleteOlist(olistDAO.findOlistById(oid));
		
	}

	@Override
	public Olist findOlistById(Integer oid) {
		return olistDAO.findOlistById(oid);
	}
}
