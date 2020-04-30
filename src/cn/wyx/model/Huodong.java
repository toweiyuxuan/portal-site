package cn.wyx.model;

import java.util.Date;

/**
 * Huodong entity. @author MyEclipse Persistence Tools
 */

public class Huodong implements java.io.Serializable
{

	// Fields

	private Integer HId;
	private String HTitle;
	private String HAword;
	private String HP1;
	private String HP2;
	private String HP3;
	private String HP4;
	private String HP5;
	private String HPhoto1;
	private String HPhoto2;
	private String HPhoto3;
	private Date HDate;
	
	// Constructors

	/** default constructor */
	public Huodong()
	{
	}

	/** full constructor */
	public Huodong(String HTitle, String HAword, String HP1, String HP2,
			String HP3, String HP4, String HP5, String HPhoto1, String HPhoto2,
			String HPhoto3,Date HDate)
	{
		this.HTitle = HTitle;
		this.HAword = HAword;
		this.HP1 = HP1;
		this.HP2 = HP2;
		this.HP3 = HP3;
		this.HP4 = HP4;
		this.HP5 = HP5;
		this.HPhoto1 = HPhoto1;
		this.HPhoto2 = HPhoto2;
		this.HPhoto3 = HPhoto3;
		this.HDate = HDate;
	}

	// Property accessors

	public Integer getHId()
	{
		return this.HId;
	}

	public void setHId(Integer HId)
	{
		this.HId = HId;
	}

	public String getHTitle()
	{
		return this.HTitle;
	}

	public void setHTitle(String HTitle)
	{
		this.HTitle = HTitle;
	}

	public String getHAword()
	{
		return this.HAword;
	}

	public void setHAword(String HAword)
	{
		this.HAword = HAword;
	}

	public String getHP1()
	{
		return this.HP1;
	}

	public void setHP1(String HP1)
	{
		this.HP1 = HP1;
	}

	public String getHP2()
	{
		return this.HP2;
	}

	public void setHP2(String HP2)
	{
		this.HP2 = HP2;
	}

	public String getHP3()
	{
		return this.HP3;
	}

	public void setHP3(String HP3)
	{
		this.HP3 = HP3;
	}

	public String getHP4()
	{
		return this.HP4;
	}

	public void setHP4(String HP4)
	{
		this.HP4 = HP4;
	}

	public String getHP5()
	{
		return this.HP5;
	}

	public void setHP5(String HP5)
	{
		this.HP5 = HP5;
	}

	public String getHPhoto1()
	{
		return this.HPhoto1;
	}

	public void setHPhoto1(String HPhoto1)
	{
		this.HPhoto1 = HPhoto1;
	}

	public String getHPhoto2()
	{
		return this.HPhoto2;
	}

	public void setHPhoto2(String HPhoto2)
	{
		this.HPhoto2 = HPhoto2;
	}

	public String getHPhoto3()
	{
		return this.HPhoto3;
	}

	public void setHPhoto3(String HPhoto3)
	{
		this.HPhoto3 = HPhoto3;
	}

	public Date getHDate()
	{
		return HDate;
	}

	public void setHDate(Date hDate)
	{
		HDate = hDate;
	}

}