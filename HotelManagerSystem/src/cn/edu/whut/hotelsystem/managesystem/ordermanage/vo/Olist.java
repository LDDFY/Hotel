package cn.edu.whut.hotelsystem.managesystem.ordermanage.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import cn.edu.whut.hotelsystem.baseinfor.vo.Hotel;
import cn.edu.whut.hotelsystem.baseinfor.vo.Room;
import cn.edu.whut.hotelsystem.baseinfor.vo.User;

/**
 * Olist entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "olist", catalog = "hotel")
public class Olist implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer oid;
	private User userByUid;
	private Room room;
	private User userByOdealid;
	private Hotel hotel;
	private Date indate;
	private String inmemo;
	private Integer innumber;
	private Integer inday;
	private Date outdate;
	private Float ammount;
	private String odeal;

	// Constructors

	/** default constructor */
	public Olist() {
	}

	/** full constructor */
	public Olist(User userByUid, Room room, User userByOdealid, Hotel hotel,
			Date indate, String inmemo, Integer innumber, Integer inday,
			Date outdate, Float ammount, String odeal) {
		this.userByUid = userByUid;
		this.room = room;
		this.userByOdealid = userByOdealid;
		this.hotel = hotel;
		this.indate = indate;
		this.inmemo = inmemo;
		this.innumber = innumber;
		this.inday = inday;
		this.outdate = outdate;
		this.ammount = ammount;
		this.odeal = odeal;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "oid", unique = true, nullable = false)
	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "uid")
	public User getUserByUid() {
		return this.userByUid;
	}

	public void setUserByUid(User userByUid) {
		this.userByUid = userByUid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rid")
	public Room getRoom() {
		return this.room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "odealid")
	public User getUserByOdealid() {
		return this.userByOdealid;
	}

	public void setUserByOdealid(User userByOdealid) {
		this.userByOdealid = userByOdealid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hid")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "indate", length = 10)
	public Date getIndate() {
		return this.indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	@Column(name = "inmemo", length = 100)
	public String getInmemo() {
		return this.inmemo;
	}

	public void setInmemo(String inmemo) {
		this.inmemo = inmemo;
	}

	@Column(name = "innumber")
	public Integer getInnumber() {
		return this.innumber;
	}

	public void setInnumber(Integer innumber) {
		this.innumber = innumber;
	}

	@Column(name = "inday")
	public Integer getInday() {
		return this.inday;
	}

	public void setInday(Integer inday) {
		this.inday = inday;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "outdate", length = 10)
	public Date getOutdate() {
		return this.outdate;
	}

	public void setOutdate(Date outdate) {
		this.outdate = outdate;
	}

	@Column(name = "ammount", precision = 12, scale = 0)
	public Float getAmmount() {
		return this.ammount;
	}

	public void setAmmount(Float ammount) {
		this.ammount = ammount;
	}

	@Column(name = "odeal", length = 50)
	public String getOdeal() {
		return this.odeal;
	}

	public void setOdeal(String odeal) {
		this.odeal = odeal;
	}

}