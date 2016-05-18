package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;

import java.text.SimpleDateFormat;
import java.util.Iterator;

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
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IOrderService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Controller
public class OrderControl {
	@Autowired
	private IOrderService orderService;
	@Autowired
	private IHotelService hotelService;

	@RequestMapping("/OrderManager")
	public String OrderManager() {
		return "order/OrderManager";
	}

	@RequestMapping("/findOrderByHid")
	public @ResponseBody JSONArray findOrderByHid(Model model,
			HttpServletRequest request, HttpServletResponse response,
			Integer hid) {

		Hotel h = hotelService.loadHotel(hid);
		JSONArray js = new JSONArray();
		Iterator<Olist> it = h.getOlists().iterator();

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

		while (it.hasNext()) {
			JSONObject node = new JSONObject();
			Olist o = it.next();

			// <th>订单号</th>
			node.put("oid", o.getOid());
			// <th>用户</th>
			node.put("uid", o.getUserByUid().getUname());
			// <th>酒店</th>
			node.put("hid", o.getHotel().getHname());
			// <th>房间</th>
			node.put("rid", o.getRoom().getRid());
			// 订单编号
			node.put("innumber", o.getInnumber());
			// <th>入住时间</th>
			String indete = formatter.format(o.getIndate());
			node.put("indete", indete);
			// <th>离开时间</th>
			String outdate = formatter.format(o.getOutdate());
			node.put("outdate", outdate);
			
			js.add(node);
		}

		return js;
	}
	
	@RequestMapping("/deleteOrder")
	public  String deleteOrder(Model model,Integer oid){
		
		String result="删除订单失败！";
		boolean flag=orderService.deleteOrderByid(oid);
		if(flag)
		{
			result="删除订单成功！";
		}
		
		model.addAttribute("result",result);
		return "order/OrderManager";
	}

}
