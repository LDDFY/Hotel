package cn.edu.whut.hotelsystem.news.vo;
// default package

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

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
	private Integer id;
	private Integer name;
	private Integer tel;
	private String content;
	private Integer status;
	private String email;

	// Constructors

	/** default constructor */
	public Email() {
	}

	/** full constructor */
	public Email(Integer name, Integer tel, String content, Integer status,
			String email) {
		this.name = name;
		this.tel = tel;
		this.content = content;
		this.status = status;
		this.email = email;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name")
	public Integer getName() {
		return this.name;
	}

	public void setName(Integer name) {
		this.name = name;
	}

	@Column(name = "tel")
	public Integer getTel() {
		return this.tel;
	}

	public void setTel(Integer tel) {
		this.tel = tel;
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

	@Column(name = "email", length = 80)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}