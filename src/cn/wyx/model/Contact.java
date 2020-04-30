package cn.wyx.model;

/**
 * Contact entity. @author MyEclipse Persistence Tools
 */

public class Contact implements java.io.Serializable
{

	// Fields

	private Integer CId;
	private String CPhone;
	private String CTel;
	private String CWeixin;
	private String COther;

	// Constructors

	/** default constructor */
	public Contact()
	{
	}

	/** full constructor */
	public Contact(String CPhone, String CTel, String CWeixin, String COther)
	{
		this.CPhone = CPhone;
		this.CTel = CTel;
		this.CWeixin = CWeixin;
		this.COther = COther;
	}

	// Property accessors

	public Integer getCId()
	{
		return this.CId;
	}

	public void setCId(Integer CId)
	{
		this.CId = CId;
	}

	public String getCPhone()
	{
		return this.CPhone;
	}

	public void setCPhone(String CPhone)
	{
		this.CPhone = CPhone;
	}

	public String getCTel()
	{
		return this.CTel;
	}

	public void setCTel(String CTel)
	{
		this.CTel = CTel;
	}

	public String getCWeixin()
	{
		return this.CWeixin;
	}

	public void setCWeixin(String CWeixin)
	{
		this.CWeixin = CWeixin;
	}

	public String getCOther()
	{
		return this.COther;
	}

	public void setCOther(String COther)
	{
		this.COther = COther;
	}

}