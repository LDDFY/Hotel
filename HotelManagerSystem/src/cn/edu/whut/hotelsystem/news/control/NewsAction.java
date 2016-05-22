package cn.edu.whut.hotelsystem.news.control;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.news.service.INewsService;
import cn.edu.whut.hotelsystem.news.vo.News;

@Controller
public class NewsAction {

	@Autowired
	private INewsService newsService;
	@Autowired
	private IHotelService hotelservice;

	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping("/newsPageUI")
	public String newsPageUI(Model model) {

		List<News> newsLists = newsService.findAllNews();
		model.addAttribute("newsLists", newsLists);
		return "public/newsPage";
	}

	@RequestMapping("/newsManager")
	public String newsManager() {

		return "news/newsManager";

	}

	@RequestMapping("/findNewsByHid")
	public @ResponseBody JSONArray findNewsByHid(Integer hid) {
		Hotel hotel = hotelservice.findHotelById(hid);
		JSONArray newsList = formatNews(hotel);
		return newsList;
	}

	private JSONArray formatNews(Hotel hotel) {

		Set<News> news = hotel.getNewses();
		JSONArray newsList = new JSONArray();
		Iterator<News> it = news.iterator();

		while (it.hasNext()) {
			JSONObject js = new JSONObject();
			News n = it.next();

			js.put("newsid", n.getNewsid());
			js.put("title", n.getTitle());
			js.put("author", n.getAuthor());
			String releasetime = sdf.format(n.getReleasetime());
			js.put("releasetime", releasetime);
			js.put("keyword", n.getKeyword());
			js.put("hid", n.getHotel().getHname());
			newsList.add(js);
		}
		return newsList;
	}

	@RequestMapping("/newsInfor")
	public String newsInfor(Model model, Integer newsid) {
		News news = newsService.findNewsById(newsid);

		model.addAttribute("news", news);
		return "news/newsInfor";
	}

	@RequestMapping("/deleteNews")
	public @ResponseBody String deleteNews(Integer newsid) {
		String result = "删除信息失败！";

		boolean flag = newsService.deleteNews(newsid);
		if (flag) {
			result = "删除信息成功！";
		}
		return result;
	}

	@RequestMapping("/addNews")
	public String addNews(Model model, Integer hid) {

		model.addAttribute("hid", hid);
		return "news/addNews";

	}

	@RequestMapping("/addNewsContent")
	public String addNewsContent(News news, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		String result = "添加新闻信息失败！";
		Integer hid = Integer.parseInt((request.getParameter("HotelID")));
		Hotel h = hotelservice.findHotelById(hid);
		news.setHotel(h);
		news.setReleasetime(new Date());
		boolean flag = newsService.addNews(news);
		if (flag) {
			result = "添加新闻信息成功！";
		}
		model.addAttribute("result", result);
		return "news/addNews";
	}

	/*
	 * var url = "findNewsSize.do" var urlPage = "ProListNews.do"
	 */

	@RequestMapping("/findNewsSize")
	public @ResponseBody int findNewsSize(Integer hid) {

		Hotel hotel = hotelservice.findHotelById(hid);
		return hotel.getNewses().size();

	}

	@RequestMapping("/ProListNews")
	public @ResponseBody JSONArray ProListNews(Integer hid, Integer pageindexs,
			Integer pageSize) {
		Hotel hotel = hotelservice.findHotelById(hid);
		JSONArray list = formatNews(hotel);
		int current = (pageindexs - 1) * pageSize;
		int totle = current + pageSize;
		if (totle > list.size()) {
			totle = list.size();
		}

		JSONArray newsList = new JSONArray();
		for (int i = current; i < totle; i++) {
			newsList.add(list.get(i));
		}
		return newsList;
	}
}
