package cn.edu.whut.hotelsystem.basedao;

import java.util.List;

import org.hibernate.Session;

public interface IBaseHibernateDAO<T> {
	// 获取Session()
	public Session getSession();

	// 获取总记录数
	public Integer tootleCounts();

	// 按页数查询
	public List<T> findByPageIndex(Integer begin, Integer pageSize);

	// 保存实体
	public boolean save(T transientInstance);

	// 删除实体
	public boolean delete(T persistentInstance);

	// 按id查找实体
	public T findById(Object id);

	// 按条件查找实体
	public List<T> findByExample(T instance);

	// 按propertyName和值查找实体
	public List<T> findByProperty(String propertyName, Object value);

	// 查找所有实体
	public List<T> findAll();

	/*
	 * 新new一个对象，如果该对象设置了ID，则这个对象就当作游离态处理： 当ID在数据库中不能找到时，用mergeinsert。
	 * 当ID在数据库中能找到的时候，update与merge的执行效果都是更新数据，发出update语句；
	 * 如果没有设置ID的话，则这个对象就当作瞬态处理：
	 * 用update的话，由于没有ID，所以会报异常，merge此时则会保存数据，根据ID生产策略生成一条数据；
	 */
	public T merge(T detachedInstance);

	/**
	 * 将传入的对象持久化并保存。 如果对象未保存（Transient状态）， 调用save方法保存。如果对象已保存（Detached状态），
	 * 调用update方法将对象与Session重新关联。
	 */
	public boolean attachDirty(T instance);

	// 将传入对象置为透明状态
	public boolean attachClean(T instance);

	public List<T> Page(String sql, Integer begin, Integer end);
}
