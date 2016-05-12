package cn.edu.whut.hotelsystem.news.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.whut.hotelsystem.news.service.INewsService;
import cn.edu.whut.hotelsystem.news.vo.News;

@Controller
public class NewsAction {

	@Autowired
	private INewsService newsService;

	@RequestMapping("/newsPageUI")
	public String newsPageUI() {

		List<News> news = newsService.findAllNews();

		return "public/newsPage";
	}
}
