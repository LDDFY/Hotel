package cn.edu.whut.hotelsystem.news.daoimp;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.news.dao.INewsDAO;
import cn.edu.whut.hotelsystem.news.vo.News;

@Transactional
@Repository
public class NewsDAO extends BaseHibernateDAO<News> implements INewsDAO {

	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String AUTHOR = "author";
	public static final String KEYWORD = "keyword";
	public static final String IMGPATH = "imgpath";

	public NewsDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<News> findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List<News> findByImgpath(Object imgpath) {
		return findByProperty(IMGPATH, imgpath);
	}

	public List<News> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<News> findByAuthor(Object author) {
		return findByProperty(AUTHOR, author);
	}

	public List<News> findByKeyword(Object keyword) {
		return findByProperty(KEYWORD, keyword);
	}

	@Override
	public boolean saveNews(News transientInstance) {
		// TODO Auto-generated method stub
		return save(transientInstance);
	}

	@Override
	public boolean deleteNews(News persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public News findNewsById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<News> findNewsByExample(News instance) {
		// TODO Auto-generated method stub
		return findByExample(instance);
	}

	@Override
	public List<News> findNewsByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return findByProperty(propertyName, value);
	}

	@Override
	public List<News> findAllNews() {
		// TODO Auto-generated method stub
		return findAll();
	}

	@Override
	public News mergeNews(News detachedInstance) {
		// TODO Auto-generated method stub
		return merge(detachedInstance);
	}

	@Override
	public boolean attachDirtyNews(News instance) {
		// TODO Auto-generated method stub
		return attachDirty(instance);
	}

	@Override
	public boolean attachCleanNews(News instance) {
		// TODO Auto-generated method stub
		return attachClean(instance);
	}

}