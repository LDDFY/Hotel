package cn.edu.whut.hotelsystem.managesystem.ordermanage.control;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

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
import cn.edu.whut.hotelsystem.baseinfor.service.IUserService;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IOrderService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

@Controller
public class OrderControl {
	@Autowired
	private IOrderService orderService;
	@Autowired
	private IHotelService hotelService;
	@Autowired
	private IUserService userService;
	private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping("/OrderManager")
	public String OrderManager() {
		return "order/OrderManager";
	}

	@RequestMapping("/findOrderByHid")
	public @ResponseBody JSONArray findOrderByHid(Model model,
			HttpServletRequest request, HttpServletResponse response,
			Integer hid) {

		Hotel h = hotelService.loadHotel(hid);
		JSONArray js = formatOrder(h);
		return js;

	}

	private JSONArray formatOrder(Hotel h) {

		JSONArray js = new JSONArray();
		Iterator<Olist> it = h.getOlists().iterator();

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
	public String deleteOrder(Model model, Integer oid) {

		String result = "删除订单失败！";
		boolean flag = orderService.deleteOrderByid(oid);
		if (flag) {
			result = "删除订单成功！";
		}

		model.addAttribute("result", result);
		return "order/OrderManager";
	}

	@RequestMapping("/deleteUserOrder")
	public String deleteUserOrder(Model model, Integer oid, Integer uid) {

		String result = "删除订单失败！";
		boolean flag = orderService.deleteOrderByid(oid);
		if (flag) {
			result = "删除订单成功！";
		}
		userUI(model, uid);
		model.addAttribute("result", result);
		return "user/user";
	}

	private void userUI(Model model, Integer uid) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String str = format.format(new Date());

		User user = userService.findUserById(uid);
		List<Olist> userOlistLists1 = new ArrayList<Olist>();
		List<Olist> userOlistLists = new ArrayList<Olist>();
		List<Olist> userBookingsLists = new ArrayList<Olist>();

		Iterator<Olist> olist = user.getOlistsForUid().iterator();
		while (olist.hasNext()) {
			userOlistLists1.add(olist.next());

		}
		for (int i = 0; i < userOlistLists1.size(); i++) {
			if (userOlistLists1.get(i).getIndate()
					.after(java.sql.Date.valueOf(str)))
				userBookingsLists.add(userOlistLists1.get(i));
		}
		for (int i = 0; i < userOlistLists1.size(); i++) {
			if (userOlistLists1.get(i).getOutdate()
					.before(java.sql.Date.valueOf(str)))
				userOlistLists.add(userOlistLists1.get(i));
		}
		model.addAttribute("userOlistLists", userOlistLists);
		model.addAttribute("userBookingsLists", userBookingsLists);

	}

	@RequestMapping("/findOrderSize")
	public @ResponseBody int findOrderSize(Integer hid) {
		Hotel h = hotelService.loadHotel(hid);

		return h.getOlists().size();
	}

	@RequestMapping("/ProListOrder")
	public @ResponseBody JSONArray ProListOrder(Integer hid,
			Integer pageindexs, Integer pageSize) {
		Hotel h = hotelService.loadHotel(hid);
		JSONArray js = formatOrder(h);
		int current = (pageindexs - 1) * pageSize;
		int totle = current + pageSize;
		if (totle > js.size()) {
			totle = js.size();
		}
		JSONArray orderList = new JSONArray();
		for (int i = current; i < totle; i++) {
			orderList.add(js.get(i));
		}
		return orderList;
	}
}
