package cn.edu.whut.hotelsystem.news.dao;


import cn.edu.whut.hotelsystem.news.vo.Email;
import java.util.List;

public interface IEmailDAO {

	public boolean save(Email transientInstance);

	public boolean delete(Email persistentInstance);

	public Email findById(java.lang.Integer id);

	public List<Email> findByExample(Email instance);

	public List<Email> findByProperty(String propertyName, Object value);

	public List<Email> findAll();

	public Email merge(Email detachedInstance);

	public boolean attachDirty(Email instance);

	public boolean attachClean(Email instance);

	public List<Email> findByContent(Object content);

	public List<Email> findByStatus(Object status);

}