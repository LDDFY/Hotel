package cn.edu.whut.hotelsystem.managesystem.ordermanage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IOlistDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

public interface IOlistService {

	void saveOlist(Olist olist);

}
