package cn.edu.whut.hotelsystem.managesystem.ordermanage.service;

import java.util.List;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

public interface IOrderService {

public List<Olist> findOlistByExample(Integer hid);

public boolean deleteOrderByid(Integer oid);

}
