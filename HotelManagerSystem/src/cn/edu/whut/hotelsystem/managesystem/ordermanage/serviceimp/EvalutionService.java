package cn.edu.whut.hotelsystem.managesystem.ordermanage.serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IEvaluationDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.service.IEvalutionService;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Evaluation;

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

	@Override
	public boolean deleteEvaluation(Integer eid) {
		// TODO Auto-generated method stub
		Evaluation e = evalutionDAO.findEvaluationById(eid);
		return evalutionDAO.deleteEvaluation(e);
	}

}
