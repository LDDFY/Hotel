package cn.edu.whut.hotelsystem.managesystem.ordermanage.daoimp;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.dao.IEvaluationDAO;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Evaluation;

@Transactional
@Repository
public class EvaluationDAO extends BaseHibernateDAO<Evaluation> implements
		IEvaluationDAO {

	public static final String UNAME = "uname";
	public static final String CONTENT = "content";

	public static final String STAR = "star";

	public EvaluationDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Evaluation> findByUname(Object uname) {
		return findByProperty(UNAME, uname);
	}

	public List<Evaluation> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<Evaluation> findByStar(Object star) {
		return findByProperty(STAR, star);
	}

	@Override
	public boolean saveEvaluation(Evaluation transientInstance) {
		// TODO Auto-generated method stub
		return save(transientInstance);
	}

	@Override
	public boolean deleteEvaluation(Evaluation persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public Evaluation findEvaluationById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<Evaluation> findEvaluationByExample(Evaluation instance) {
		// TODO Auto-generated method stub
		return findByExample(instance);
	}

	@Override
	public List<Evaluation> findEvaluationByProperty(String propertyName,
			Object value) {
		// TODO Auto-generated method stub
		return findByProperty(propertyName, value);
	}

	@Override
	public List<Evaluation> findAllEvaluation() {
		// TODO Auto-generated method stub
		return findAll();
	}

	@Override
	public Evaluation mergeEvaluation(Evaluation detachedInstance) {
		// TODO Auto-generated method stub
		return merge(detachedInstance);
	}

	@Override
	public boolean attachDirtyEvaluation(Evaluation instance) {
		// TODO Auto-generated method stub
		return attachDirty(instance);
	}

	@Override
	public boolean attachCleanEvaluation(Evaluation instance) {
		// TODO Auto-generated method stub
		return attachClean(instance);
	}

}