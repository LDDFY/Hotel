package cn.edu.whut.hotelsystem.managesystem.ordermanage.service;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

public interface IOlistService {

	boolean saveOlist(Olist olist);

	void deleteByOid(Integer oid);

	Olist findOlistById(Integer oid);

}
