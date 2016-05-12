package cn.edu.whut.hotelsystem.news.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.news.dao.INewsDAO;
import cn.edu.whut.hotelsystem.news.service.INewsService;
import cn.edu.whut.hotelsystem.news.vo.News;

@Transactional
@Service
public class NewsService implements INewsService {
	@Autowired
	private INewsDAO newsDAO;

	public List<News> findAllNews() {

		return newsDAO.findAllNews();
	}
}
