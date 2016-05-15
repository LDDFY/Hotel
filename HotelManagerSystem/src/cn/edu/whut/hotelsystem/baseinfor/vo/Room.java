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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import cn.edu.whut.hotelsystem.managesystem.ordermanage.vo.Olist;

/**
 * Room entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "room", catalog = "hotel")
@JsonIgnoreProperties(value={"olists","hotel"})  
public class Room implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer roomid;
	private Hotel hotel;
	private String rid;
	private String rtype;
	private Integer rarea;
	private Float rprice;
	private String rpattern;
	private Short customs;
	private String rstatus;
	private Integer total;
	private Integer available;
	private Set<Olist> olists = new HashSet<Olist>(0);

	// Constructors

	/** default constructor */
	public Room() {
	}

	/** full constructor */
	public Room(Hotel hotel, String rid, String rtype, Integer rarea,
			Float rprice, String rpattern, Short customs, String rstatus,
			Integer total, Integer available, Set<Olist> olists) {
		this.hotel = hotel;
		this.rid = rid;
		this.rtype = rtype;
		this.rarea = rarea;
		this.rprice = rprice;
		this.rpattern = rpattern;
		this.customs = customs;
		this.rstatus = rstatus;
		this.total = total;
		this.available = available;
		this.olists = olists;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "roomid", unique = true, nullable = false)
	public Integer getRoomid() {
		return this.roomid;
	}

	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hid")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@Column(name = "rid", length = 5)
	public String getRid() {
		return this.rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	@Column(name = "rtype", length = 20)
	public String getRtype() {
		return this.rtype;
	}

	public void setRtype(String rtype) {
		this.rtype = rtype;
	}

	@Column(name = "rarea")
	public Integer getRarea() {
		return this.rarea;
	}

	public void setRarea(Integer rarea) {
		this.rarea = rarea;
	}

	@Column(name = "rprice", precision = 12, scale = 0)
	public Float getRprice() {
		return this.rprice;
	}

	public void setRprice(Float rprice) {
		this.rprice = rprice;
	}

	@Column(name = "rpattern", length = 500)
	public String getRpattern() {
		return this.rpattern;
	}

	public void setRpattern(String rpattern) {
		this.rpattern = rpattern;
	}

	@Column(name = "customs")
	public Short getCustoms() {
		return this.customs;
	}

	public void setCustoms(Short customs) {
		this.customs = customs;
	}

	@Column(name = "rstatus", length = 2)
	public String getRstatus() {
		return this.rstatus;
	}

	public void setRstatus(String rstatus) {
		this.rstatus = rstatus;
	}

	@Column(name = "total")
	public Integer getTotal() {
		return this.total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	@Column(name = "available")
	public Integer getAvailable() {
		return this.available;
	}

	public void setAvailable(Integer available) {
		this.available = available;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "room")
	public Set<Olist> getOlists() {
		return this.olists;
	}

	public void setOlists(Set<Olist> olists) {
		this.olists = olists;
	}

}