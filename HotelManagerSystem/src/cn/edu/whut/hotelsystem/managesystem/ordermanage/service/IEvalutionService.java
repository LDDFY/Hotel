package cn.edu.whut.hotelsystem.managesystem.ordermanage.service;

public interface IEvalutionService {

	public double getCustomersApplauseRate(Integer hid);

	public double getApplause(Integer hid);

	public boolean deleteEvaluation(Integer eid);

}
