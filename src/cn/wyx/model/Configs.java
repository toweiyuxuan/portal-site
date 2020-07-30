package cn.wyx.model;

import java.sql.Timestamp;

/**
 * Configs entity. @author MyEclipse Persistence Tools
 */

public class Configs implements java.io.Serializable {

	// Fields

	private Long id;
	private String key;
	private String value;
	private Timestamp createdAt;
	private Timestamp updatedAt;

	// Constructors

	/** default constructor */
	public Configs() {
	}

	/** full constructor */
	public Configs(String key, String value, Timestamp createdAt,
			Timestamp updatedAt) {
		this.key = key;
		this.value = value;
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

	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
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