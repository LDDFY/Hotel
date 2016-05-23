package cn.edu.whut.hotelsystem.news.service;

import java.util.List;

import cn.edu.whut.hotelsystem.news.vo.Email;

public interface IEmailService {
	public boolean addEmail(Email email);

	public List<Email> findAllEmail();

	public boolean deleteEmail(Integer id);

	public void readEmail(Integer id);

	public List<Email> findUread();

}
