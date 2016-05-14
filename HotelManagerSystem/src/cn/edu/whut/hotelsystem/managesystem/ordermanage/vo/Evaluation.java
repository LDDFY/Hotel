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
import cn.edu.whut.hotelsystem.baseinfor.vo.User;

/**
 * Evaluation entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "evaluation", catalog = "hotel")
public class Evaluation implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer eid;
	private User user;
	private Hotel hotel;
	private String uname;
	private String content;
	private Date evaluationtime;
	private Integer star;

	// Constructors

	/** default constructor */
	public Evaluation() {
	}

	/** minimal constructor */
	public Evaluation(User user) {
		this.user = user;
	}

	/** full constructor */
	public Evaluation(User user, Hotel hotel, String uname, String content,
			Date evaluationtime, Integer star) {
		this.user = user;
		this.hotel = hotel;
		this.uname = uname;
		this.content = content;
		this.evaluationtime = evaluationtime;
		this.star = star;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "eid", unique = true, nullable = false)
	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "uid", nullable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "hid")
	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@Column(name = "uname", length = 50)
	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	@Column(name = "content", length = 5000)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "evaluationtime", length = 10)
	public Date getEvaluationtime() {
		return this.evaluationtime;
	}

	public void setEvaluationtime(Date evaluationtime) {
		this.evaluationtime = evaluationtime;
	}

	@Column(name = "star")
	public Integer getStar() {
		return this.star;
	}

	public void setStar(Integer star) {
		this.star = star;
	}

}