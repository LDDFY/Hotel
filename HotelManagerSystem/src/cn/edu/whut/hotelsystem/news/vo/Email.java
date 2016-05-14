package cn.edu.whut.hotelsystem.news.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import cn.edu.whut.hotelsystem.baseinfor.vo.User;

/**
 * Email entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "email", catalog = "hotel")
public class Email implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer emailid;
	private User userBySendid;
	private User userByReciveid;
	private String content;
	private Integer status;

	// Constructors

	/** default constructor */
	public Email() {
	}

	/** full constructor */
	public Email(User userBySendid, User userByReciveid, String content,
			Integer status) {
		this.userBySendid = userBySendid;
		this.userByReciveid = userByReciveid;
		this.content = content;
		this.status = status;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "emailid", unique = true, nullable = false)
	public Integer getEmailid() {
		return this.emailid;
	}

	public void setEmailid(Integer emailid) {
		this.emailid = emailid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "sendid")
	public User getUserBySendid() {
		return this.userBySendid;
	}

	public void setUserBySendid(User userBySendid) {
		this.userBySendid = userBySendid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "reciveid")
	public User getUserByReciveid() {
		return this.userByReciveid;
	}

	public void setUserByReciveid(User userByReciveid) {
		this.userByReciveid = userByReciveid;
	}

	@Column(name = "content", length = 5000)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}