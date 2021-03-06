package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;

import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.whut.hotelsystem.baseinfor.service.IHotelService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IEvalutionService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Evaluation;

@Controller
public class EvaluationControl {
	@Autowired
	private IEvalutionService evalutionService;

	@Autowired
	private IHotelService hotelService;

	private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping("/EvaluationManager")
	public String EvaluationManager() {

		return "order/EvaluationManager";
	}

	@RequestMapping("/freshEvaluationByHid")
	public @ResponseBody JSONArray freshEvaluationByHid(Integer hid) {

		Hotel hotel = hotelService.loadHotel(hid);
		JSONArray list = formatEvaluation(hotel);
		return list;

	}

	private JSONArray formatEvaluation(Hotel hotel) {
		Set<Evaluation> olistList = hotel.getEvaluations();
		Iterator<Evaluation> it = olistList.iterator();
		JSONArray list = new JSONArray();
		while (it.hasNext()) {
			Evaluation e = it.next();
			JSONObject js = new JSONObject();
			js.put("user", e.getUser().getUname());
			js.put("hotel", e.getHotel().getHname());
			js.put("content", e.getContent());
			String evaluationtime = format.format(e.getEvaluationtime());
			js.put("evaluationtime", evaluationtime);
			js.put("star", e.getStar());
			js.put("eid", e.getEid());
			list.add(js);
		}
		return list;
	}

	@RequestMapping("/deleteEvaluation")
	public String deleteEvaluation(Model model, Integer eid) {
		String result = "删除评价信息失败！";
		boolean flag = evalutionService.deleteEvaluation(eid);
		if (flag) {
			result = "删除评价信息成功！";
		}
		model.addAttribute("result", result);
		return "order/EvaluationManager";
	}

	/*
	 * var url = "findEvaluationSize.do" var urlPage = "ProListEvaluation.do"
	 */

	@RequestMapping("/findEvaluationSize")
	public @ResponseBody int findEvaluationSize(Integer hid) {

		Hotel hotel = hotelService.loadHotel(hid);
		return hotel.getEvaluations().size();

	}

	@RequestMapping("/ProListEvaluation")
	public @ResponseBody JSONArray ProListEvaluation(Integer hid,
			Integer pageindexs, Integer pageSize) {
		Hotel hotel = hotelService.loadHotel(hid);
		JSONArray list = formatEvaluation(hotel);

		int current = (pageindexs - 1) * pageSize;
		int totle = current + pageSize;
		if (totle > list.size()) {
			totle = list.size();
		}

		JSONArray evaluationList = new JSONArray();
		for (int i = current; i < totle; i++) {
			evaluationList.add(list.get(i));
		}
		return evaluationList;
	}
}
