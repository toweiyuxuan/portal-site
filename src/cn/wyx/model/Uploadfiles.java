package cn.wyx.model;

import java.sql.Timestamp;

/**
 * Uploadfiles entity. @author MyEclipse Persistence Tools
 */

public class Uploadfiles implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String url;
	private Integer type;
	private Integer status;
	private Long userId;
	private Timestamp createdAt;
	private Timestamp updatedAt;

	// Constructors

	/** default constructor */
	public Uploadfiles() {
	}

	/** full constructor */
	public Uploadfiles(String name, String url, Integer type, Integer status,
			Long userId, Timestamp createdAt, Timestamp updatedAt) {
		this.name = name;
		this.url = url;
		this.type = type;
		this.status = status;
		this.userId = userId;
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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
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

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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