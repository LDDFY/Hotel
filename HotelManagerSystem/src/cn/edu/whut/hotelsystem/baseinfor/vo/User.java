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

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user", catalog = "hotel")
public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer uid;
	private String uname;
	private String upwd;
	private String realname;
	private String ugender;
	private String idnumber;
	private String utel;
	private String uemail;
	private Integer level;
	private Double money;
	private Set<Olist> olists = new HashSet<Olist>(0);
	private Set<Evaluation> evaluations = new HashSet<Evaluation>(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String uname) {
		this.uname = uname;
	}

	/** full constructor */
	public User(String uname, String upwd, String realname, String ugender,
			String idnumber, String utel, String uemail, Integer level,
			Double money, Set<Olist> olists, Set<Evaluation> evaluations) {
		this.uname = uname;
		this.upwd = upwd;
		this.realname = realname;
		this.ugender = ugender;
		this.idnumber = idnumber;
		this.utel = utel;
		this.uemail = uemail;
		this.level = level;
		this.money = money;
		this.olists = olists;
		this.evaluations = evaluations;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "uid", unique = true, nullable = false)
	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	@Column(name = "uname", nullable = false, length = 50)
	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	@Column(name = "upwd", length = 100)
	public String getUpwd() {
		return this.upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	@Column(name = "realname", length = 20)
	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	@Column(name = "ugender", length = 3)
	public String getUgender() {
		return this.ugender;
	}

	public void setUgender(String ugender) {
		this.ugender = ugender;
	}

	@Column(name = "idnumber", length = 18)
	public String getIdnumber() {
		return this.idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	@Column(name = "utel", length = 20)
	public String getUtel() {
		return this.utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	@Column(name = "uemail", length = 20)
	public String getUemail() {
		return this.uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	@Column(name = "level", length = 1)
	public Integer getLevel() {
		return this.level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	@Column(name = "money", precision = 22, scale = 0)
	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Olist> getOlists() {
		return this.olists;
	}

	public void setOlists(Set<Olist> olists) {
		this.olists = olists;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Evaluation> getEvaluations() {
		return this.evaluations;
	}

	public void setEvaluations(Set<Evaluation> evaluations) {
		this.evaluations = evaluations;
	}

}