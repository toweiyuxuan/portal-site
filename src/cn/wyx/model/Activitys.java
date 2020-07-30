package cn.wyx.model;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Activitys entity. @author MyEclipse Persistence Tools
 */

public class Activitys implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String cover;
	private String picture;
	private String introduction;
	private String description;
	private Integer status;
	private Date startingTime;
	private Date endTime;
	private Timestamp createdAt;
	private Timestamp updatedAt;

	// Constructors

	/** default constructor */
	public Activitys() {
	}

	/** full constructor */
	public Activitys(String name, String cover, String picture,
			String introduction, String description, Integer status,
			Date startingTime, Date endTime, Timestamp createdAt,
			Timestamp updatedAt) {
		this.name = name;
		this.cover = cover;
		this.picture = picture;
		this.introduction = introduction;
		this.description = description;
		this.status = status;
		this.startingTime = startingTime;
		this.endTime = endTime;
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

	public String getCover() {
		return this.cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getStartingTime() {
		return this.startingTime;
	}

	public void setStartingTime(Date startingTime) {
		this.startingTime = startingTime;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
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