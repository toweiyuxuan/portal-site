package cn.wyx.model;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable
{

	// Fields

	private Integer UId;
	private String UName;
	private String UPassword;

	// Constructors

	/** default constructor */
	public User()
	{
	}

	/** full constructor */
	public User(String UName, String UPassword)
	{
		this.UName = UName;
		this.UPassword = UPassword;
	}

	// Property accessors

	public Integer getUId()
	{
		return this.UId;
	}

	public void setUId(Integer UId)
	{
		this.UId = UId;
	}

	public String getUName()
	{
		return this.UName;
	}

	public void setUName(String UName)
	{
		this.UName = UName;
	}

	public String getUPassword()
	{
		return this.UPassword;
	}

	public void setUPassword(String UPassword)
	{
		this.UPassword = UPassword;
	}

}