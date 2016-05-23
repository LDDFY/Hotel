package cn.edu.whut.hotelsystem.news.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.news.dao.IEmailDAO;
import cn.edu.whut.hotelsystem.news.service.IEmailService;
import cn.edu.whut.hotelsystem.news.vo.Email;

@Service
public class EmailService implements IEmailService {
	@Autowired
	private IEmailDAO emailDAO;

	@Override
	public boolean addEmail(Email email) {
		// TODO Auto-generated method stub
		return emailDAO.saveEmail(email);
	}

	@Override
	public List<Email> findAllEmail() {
		// TODO Auto-generated method stub
		return emailDAO.findAllEmail();
	}

	@Override
	public boolean deleteEmail(Integer id) {
		// TODO Auto-generated method stub
		Email e = emailDAO.findEmailById(id);
		return emailDAO.deleteEmail(e);
	}

	@Override
	public void readEmail(Integer id) {
		// TODO Auto-generated method stub

		Email e = emailDAO.findEmailById(id);
		e.setStatus(1);
		Email e1 = emailDAO.mergeEmail(e);
		emailDAO.attachDirtyEmail(e1);
	}

	@Override
	public List<Email> findUread() {
		// TODO Auto-generated method stub
		String hql = "FROM Email e WHERE e.status=0";
		return emailDAO.queryHQLEmail(hql);
	}

}
