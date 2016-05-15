package cn.edu.whut.hotelsystem.basedao;

import static org.hibernate.criterion.Example.create;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class BaseHibernateDAO<T> implements IBaseHibernateDAO<T> {

	@Autowired
	private SessionFactory sessionFactory;
	protected Class<?> clazz;
	protected Logger log = LoggerFactory.getLogger(this.getClass());

	public BaseHibernateDAO() {
		// 将传入实体初始化为对象
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		clazz = (Class<?>) type.getActualTypeArguments()[0];
	}

	@Override
	public Session getSession() {
		// 获取当前session
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Integer tootleCounts() {
		// 获取总记录数
		return findAll().size();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByPageIndex(Integer begin, Integer end) {
		// 按页数查询
		String queryString = "FROM " + clazz.getSimpleName();
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setFirstResult(begin);
		queryObject.setMaxResults(end);
		return queryObject.list();
	}

	@SuppressWarnings("unchecked")
	public List<T> Page(String sql, Integer begin, Integer end) {
		Query queryObject = getSession().createQuery(sql);
		queryObject.setFirstResult(begin);
		queryObject.setMaxResults(end);
		return queryObject.list();
	}

	@Override
	public boolean save(T transientInstance) {
		// 保存实体
		log.debug("saving " + clazz.getSimpleName() + "instance");
		try {
			getSession().save(transientInstance);
			getSession().flush();
			log.debug("save successful");
			return true;
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}

	}

	@Override
	public boolean delete(T persistentInstance) {
		// 删除实体
		log.debug("deleting" + clazz.getSimpleName() + "instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
			getSession().flush();
			return true;
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	@Override
	public T findById(Object id) {
		// TODO Auto-generated method stub

		log.debug("getting " + clazz.getSimpleName() + " instance with id: "
				+ id);
		try {
			@SuppressWarnings("unchecked")
			T instance = (T) getSession().get(clazz, (Serializable) id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}

	}

	@Override
	public List<T> findByExample(T instance) {
		// 按照类型查找实体
		log.debug("finding " + clazz.getSimpleName() + " instance by example");
		try {
			@SuppressWarnings("unchecked")
			List<T> results = (List<T>) getSession()
					.createCriteria(clazz.getClass()).add(create(instance))
					.list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByProperty(String propertyName, Object value) {
		// 按照propertyName和值查询实体
		log.debug("finding " + clazz.getSimpleName()
				+ " instance with property: " + propertyName + ", value: "
				+ value);
		try {
			String queryString = "from " + clazz.getSimpleName()
					+ " as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);

			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		// 查找所有实体

		log.debug("finding all " + clazz.getSimpleName() + " instances");
		try {
			String queryString = "from " + clazz.getSimpleName();
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	@Override
	public T merge(T detachedInstance) {
		/*
		 * 新new一个对象，如果该对象设置了ID，则这个对象就当作游离态处理： 当ID在数据库中不能找到时，用mergeinsert。
		 * 当ID在数据库中能找到的时候，update与merge的执行效果都是更新数据，发出update语句；
		 * 如果没有设置ID的话，则这个对象就当作瞬态处理：
		 * 用update的话，由于没有ID，所以会报异常，merge此时则会保存数据，根据ID生产策略生成一条数据；
		 */
		log.debug("merging " + clazz.getSimpleName() + " instance");
		try {
			@SuppressWarnings("unchecked")
			T result = (T) getSession().merge(detachedInstance);
			getSession().flush();
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	@Override
	public boolean attachDirty(T instance) {
		/**
		 * 将传入的对象持久化并保存。 如果对象未保存（Transient状态）， 调用save方法保存。如果对象已保存（Detached状态），
		 * 调用update方法将对象与Session重新关联。
		 */
		log.debug("attaching dirty " + clazz.getSimpleName() + " instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
			getSession().flush();

			return true;
		} catch (RuntimeException re) {
			log.error("attach failed", re);

			throw re;
		}

	}

	@Override
	public boolean attachClean(T instance) {
		// 将实体置为透明状态
		log.debug("attaching clean " + clazz.getSimpleName() + " instance");
		try {
			getSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
			return true;
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<T> querySQL(String sql) {
		// TODO Auto-generated method stub
		Query sqlquery = getSession().createSQLQuery(sql);

		return sqlquery.list();
	}


}
