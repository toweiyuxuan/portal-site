package cn.wyx.model;

import java.sql.Timestamp;

/**
 * Records entity. @author MyEclipse Persistence Tools
 */

public class Records implements java.io.Serializable {

	// Fields

	private Long id;
	private String login;
	private String content;
	private String addressIp;
	private Timestamp createdAt;
	private Timestamp updatedAt;

	// Constructors

	/** default constructor */
	public Records() {
	}

	/** full constructor */
	public Records(String login, String content, String addressIp,
			Timestamp createdAt, Timestamp updatedAt) {
		this.login = login;
		this.content = content;
		this.addressIp = addressIp;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAddressIp() {
		return this.addressIp;
	}

	public void setAddressIp(String addressIp) {
		this.addressIp = addressIp;
	}

	public Timestamp getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	public Timestamp getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Timestamp updatedAt) {
		this.updatedAt = updatedAt;
	}

}