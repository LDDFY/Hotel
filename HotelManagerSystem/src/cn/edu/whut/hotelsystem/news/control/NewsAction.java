package cn.edu.whut.hotelsystem.news.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.whut.hotelsystem.news.service.INewsService;
import cn.edu.whut.hotelsystem.news.vo.News;

@Controller
public class NewsAction {

	@Autowired
	private INewsService newsService;

	@RequestMapping("/newsPageUI")
	public String newsPageUI(Model model) {

		List<News> newsLists = newsService.findAllNews();
		model.addAttribute("newsLists", newsLists);
		return "public/newsPage";
	}
}
