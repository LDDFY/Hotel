package cn.edu.whut.hotelsystem.baseinfor.daoimp;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.whut.hotelsystem.basedao.BaseHibernateDAO;
import cn.edu.whut.hotelsystem.baseinfor.dao.IHotelDAO;
import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;

@Transactional
@Repository
public class HotelDAO extends BaseHibernateDAO<Hotel> implements IHotelDAO {

	// property constants
	public static final String HNAME = "hname";
	public static final String HEMAIL = "hemail";
	public static final String HTEL = "htel";
	public static final String HPROVINCE = "hprovince";
	public static final String HCITY = "hcity";
	public static final String HADDR = "haddr";
	public static final String GRAND = "grand";
	public static final String GUESTRATINGS = "guestratings";
	public static final String REVIEWS = "reviews";
	public static final String SUMMARY = "summary";
	public static final String IMAGEPATH = "imagepath";
	public static final String BROWSENUMBER = "browsenumber";
	public static final String AVGPRICE = "avgprice";

	public HotelDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Hotel> findByHname(Object hname) {
		return findByProperty(HNAME, hname);
	}

	public List<Hotel> findByHemail(Object hemail) {
		return findByProperty(HEMAIL, hemail);
	}

	public List<Hotel> findByHtel(Object htel) {
		return findByProperty(HTEL, htel);
	}

	public List<Hotel> findByHprovince(Object hprovince) {
		return findByProperty(HPROVINCE, hprovince);
	}

	public List<Hotel> findByHcity(Object hcity) {
		return findByProperty(HCITY, hcity);
	}

	public List<Hotel> findByHaddr(Object haddr) {
		return findByProperty(HADDR, haddr);
	}

	public List<Hotel> findByGrand(Object grand) {
		return findByProperty(GRAND, grand);
	}

	public List<Hotel> findByGuestratings(Object guestratings) {
		return findByProperty(GUESTRATINGS, guestratings);
	}

	public List<Hotel> findByReviews(Object reviews) {
		return findByProperty(REVIEWS, reviews);
	}

	public List<Hotel> findBySummary(Object summary) {
		return findByProperty(SUMMARY, summary);
	}

	public List<Hotel> findByImagepath(Object imagepath) {
		return findByProperty(IMAGEPATH, imagepath);
	}

	public List<Hotel> findByBrowsenumber(Object browsenumber) {
		return findByProperty(BROWSENUMBER, browsenumber);
	}

	public List<Hotel> findByAvgprice(Object avgprice) {
		return findByProperty(AVGPRICE, avgprice);
	}

	@Override
	public boolean saveHotel(Hotel transientInstance) {
		// TODO Auto-generated method stub
		return save(transientInstance);
	}

	@Override
	public boolean deleteHotel(Hotel persistentInstance) {
		// TODO Auto-generated method stub
		return delete(persistentInstance);
	}

	@Override
	public Hotel findHotelById(Integer id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	@Override
	public List<Hotel> findHotelByExample(Hotel instance) {
		// TODO Auto-generated method stub
		return findByExample(instance);
	}

	@Override
	public List<Hotel> findHotelByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return findByProperty(propertyName, value);
	}

	@Override
	public List<Hotel> findAllHotel() {
		// TODO Auto-generated method stub

		return findAll();
	}

	@Override
	public Hotel mergeHotel(Hotel detachedInstance) {
		// TODO Auto-generated method stub
		return merge(detachedInstance);
	}

	@Override
	public boolean attachDirtyHotel(Hotel instance) {
		// TODO Auto-generated method stub
		return attachDirty(instance);
	}

	@Override
	public boolean attachCleanHotel(Hotel instance) {
		// TODO Auto-generated method stub
		return attachClean(instance);
	}

	public Hotel loadHotel(Integer hid) {

		return (Hotel) getSession().load(Hotel.class, hid);
	}

}