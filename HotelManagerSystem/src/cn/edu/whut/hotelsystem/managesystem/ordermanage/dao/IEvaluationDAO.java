package cn.edu.whut.hotelsystem.managesystem.ordermanage.dao;


import java.util.List;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Evaluation;

public interface IEvaluationDAO {
	

	public boolean saveEvaluation(Evaluation transientInstance);

	public boolean deleteEvaluation(Evaluation persistentInstance);

	public Evaluation findEvaluationById(java.lang.Integer id);

	public List<Evaluation> findEvaluationByExample(Evaluation instance);

	public List<Evaluation> findEvaluationByProperty(String propertyName, Object value);
	
	public List<Evaluation> findAllEvaluation() ;

	public Evaluation mergeEvaluation(Evaluation detachedInstance);

	public boolean attachDirtyEvaluation(Evaluation instance);

	public boolean attachCleanEvaluation(Evaluation instance);
	
	
	
	public List<Evaluation> findByUname(Object uname);

	public List<Evaluation> findByContent(Object content);

	public double getCustomersApplauseRate(Integer hid);

	public double getApplause(Integer hid);

	
}