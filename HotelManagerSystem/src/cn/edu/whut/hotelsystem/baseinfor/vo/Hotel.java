package cn.edu.whut.hotelsystem.baseinfor.vo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Evaluation;
import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;
import cn.edu.whut.hotelsystem.news.vo.News;

/**
 * Hotel entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "hotel", catalog = "hotel")
public class Hotel implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer hid;
	private String hname;
	private String hemail;
	private String htel;
	private String hprovince;
	private String hcity;
	private String haddr;
	private Integer grand;
	private Float guestratings;
	private Integer reviews;
	private String summary;
	private String imagepath;
	private Integer browsenumber;
	private Float avgprice;
	private Set<Room> rooms = new HashSet<Room>(0);
	private Set<Evaluation> evaluations = new HashSet<Evaluation>(0);
	private Set<News> newses = new HashSet<News>(0);
	private Set<Olist> olists = new HashSet<Olist>(0);

	// Constructors

	/** default constructor */
	public Hotel() {
	}

	/** full constructor */
	public Hotel(String hname, String hemail, String htel, String hprovince,
			String hcity, String haddr, Integer grand, Float guestratings,
			Integer reviews, String summary, String imagepath,
			Integer browsenumber, Float avgprice, Set<Room> rooms,
			Set<Evaluation> evaluations, Set<News> newses, Set<Olist> olists) {
		this.hname = hname;
		this.hemail = hemail;
		this.htel = htel;
		this.hprovince = hprovince;
		this.hcity = hcity;
		this.haddr = haddr;
		this.grand = grand;
		this.guestratings = guestratings;
		this.reviews = reviews;
		this.summary = summary;
		this.imagepath = imagepath;
		this.browsenumber = browsenumber;
		this.avgprice = avgprice;
		this.rooms = rooms;
		this.evaluations = evaluations;
		this.newses = newses;
		this.olists = olists;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "hid", unique = true, nullable = false)
	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	@Column(name = "hname", length = 50)
	public String getHname() {
		return this.hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	@Column(name = "hemail", length = 50)
	public String getHemail() {
		return this.hemail;
	}

	public void setHemail(String hemail) {
		this.hemail = hemail;
	}

	@Column(name = "htel", length = 20)
	public String getHtel() {
		return this.htel;
	}

	public void setHtel(String htel) {
		this.htel = htel;
	}

	@Column(name = "hprovince", length = 20)
	public String getHprovince() {
		return this.hprovince;
	}

	public void setHprovince(String hprovince) {
		this.hprovince = hprovince;
	}

	@Column(name = "hcity", length = 20)
	public String getHcity() {
		return this.hcity;
	}

	public void setHcity(String hcity) {
		this.hcity = hcity;
	}

	@Column(name = "haddr", length = 20)
	public String getHaddr() {
		return this.haddr;
	}

	public void setHaddr(String haddr) {
		this.haddr = haddr;
	}

	@Column(name = "grand")
	public Integer getGrand() {
		return this.grand;
	}

	public void setGrand(Integer grand) {
		this.grand = grand;
	}

	@Column(name = "guestratings", precision = 12, scale = 0)
	public Float getGuestratings() {
		return this.guestratings;
	}

	public void setGuestratings(Float guestratings) {
		this.guestratings = guestratings;
	}

	@Column(name = "reviews")
	public Integer getReviews() {
		return this.reviews;
	}

	public void setReviews(Integer reviews) {
		this.reviews = reviews;
	}

	@Column(name = "summary", length = 500)
	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	@Column(name = "imagepath", length = 50)
	public String getImagepath() {
		return this.imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	@Column(name = "browsenumber")
	public Integer getBrowsenumber() {
		return this.browsenumber;
	}

	public void setBrowsenumber(Integer browsenumber) {
		this.browsenumber = browsenumber;
	}

	@Column(name = "avgprice", precision = 12, scale = 0)
	public Float getAvgprice() {
		return this.avgprice;
	}

	public void setAvgprice(Float avgprice) {
		this.avgprice = avgprice;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Room> getRooms() {
		return this.rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Evaluation> getEvaluations() {
		return this.evaluations;
	}

	public void setEvaluations(Set<Evaluation> evaluations) {
		this.evaluations = evaluations;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<News> getNewses() {
		return this.newses;
	}

	public void setNewses(Set<News> newses) {
		this.newses = newses;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "hotel")
	public Set<Olist> getOlists() {
		return this.olists;
	}

	public void setOlists(Set<Olist> olists) {
		this.olists = olists;
	}

}