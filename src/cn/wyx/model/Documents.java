package cn.wyx.model;

import java.sql.Timestamp;

/**
 * Documents entity. @author MyEclipse Persistence Tools
 */

public class Documents implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String title;
	private String address;
	private String cover;
	private String introduction;
	private Integer type;
	private Integer status;
	private Timestamp createdAt;
	private Timestamp updatedAt;

	// Constructors

	/** default constructor */
	public Documents() {
	}

	/** full constructor */
	public Documents(String name, String title, String address, String cover,
			String introduction, Integer type, Integer status,
			Timestamp createdAt, Timestamp updatedAt) {
		this.name = name;
		this.title = title;
		this.address = address;
		this.cover = cover;
		this.introduction = introduction;
		this.type = type;
		this.status = status;
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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCover() {
		return this.cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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