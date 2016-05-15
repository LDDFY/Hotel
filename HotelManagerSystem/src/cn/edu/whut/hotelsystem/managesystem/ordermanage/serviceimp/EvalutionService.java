package cn.edu.whut.hotelsystem.managesystem.ordermanage.serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IEvaluationDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IEvalutionService;

@Service
public class EvalutionService implements IEvalutionService {

	@Autowired
	private IEvaluationDAO evalutionDAO;
	
	public double getCustomersApplauseRate(Integer hid) {
		return evalutionDAO.getCustomersApplauseRate(hid);
	}

	public double getApplause(Integer hid) {
		// TODO Auto-generated method stub
		return evalutionDAO.getApplause(hid);
	}

}
