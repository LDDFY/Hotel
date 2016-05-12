package cn.edu.whut.hotelsystem.news.dao;


import java.util.List;

import cn.edu.whut.hotelsystem.news.vo.News;

public interface INewsDAO {
	
	public boolean saveNews(News transientInstance);

	public boolean deleteNews(News persistentInstance);

	public News findNewsById(java.lang.Integer id);

	public List<News> findNewsByExample(News instance);

	public List<News> findNewsByProperty(String propertyName, Object value);
	
	
	public List<News> findAllNews();
	public News mergeNews(News detachedInstance);

	public boolean attachDirtyNews(News instance);
	public boolean attachCleanNews(News instance);
	
	
	public List<News> findByTitle(Object title);
	public List<News> findByContent(Object content);

	public List<News> findByAuthor(Object author);

	public List<News> findByKeyword(Object keyword);

	
}