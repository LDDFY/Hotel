package cn.edu.whut.hotelsystem.news.service;

import java.util.List;

import cn.edu.whut.hotelsystem.news.vo.News;

public interface INewsService {

	public List<News> findAllNews();

	public News findNewsById(Integer newsid);

	public boolean deleteNews(Integer newsid);

	public boolean addNews(News news);
}
