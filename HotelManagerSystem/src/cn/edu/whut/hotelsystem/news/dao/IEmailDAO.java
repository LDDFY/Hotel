package cn.edu.whut.hotelsystem.news.dao;

import cn.edu.whut.hotelsystem.news.vo.Email;

import java.util.List;

public interface IEmailDAO {

	public boolean saveEmail(Email transientInstance);

	public boolean deleteEmail(Email persistentInstance);

	public Email findEmailById(java.lang.Integer id);

	public List<Email> findAllEmail();

}