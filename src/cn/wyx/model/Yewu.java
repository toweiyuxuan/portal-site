package cn.wyx.model;

/**
 * Yewu entity. @author MyEclipse Persistence Tools
 */

public class Yewu implements java.io.Serializable
{

	// Fields

	private Integer YId;
	private String YTitle;
	private String YP1;
	private String YP2;
	private String YP3;
	private String YP4;
	private String YP5;
	private String YPhoto1;
	private String YPhoto2;
	private String YPhoto3;

	// Constructors

	/** default constructor */
	public Yewu()
	{
	}

	/** full constructor */
	public Yewu(String YTitle, String YP1, String YP2, String YP3, String YP4,
			String YP5, String YPhoto1, String YPhoto2, String YPhoto3)
	{
		this.YTitle = YTitle;
		this.YP1 = YP1;
		this.YP2 = YP2;
		this.YP3 = YP3;
		this.YP4 = YP4;
		this.YP5 = YP5;
		this.YPhoto1 = YPhoto1;
		this.YPhoto2 = YPhoto2;
		this.YPhoto3 = YPhoto3;
	}

	// Property accessors

	public Integer getYId()
	{
		return this.YId;
	}

	public void setYId(Integer YId)
	{
		this.YId = YId;
	}

	public String getYTitle()
	{
		return this.YTitle;
	}

	public void setYTitle(String YTitle)
	{
		this.YTitle = YTitle;
	}

	public String getYP1()
	{
		return this.YP1;
	}

	public void setYP1(String YP1)
	{
		this.YP1 = YP1;
	}

	public String getYP2()
	{
		return this.YP2;
	}

	public void setYP2(String YP2)
	{
		this.YP2 = YP2;
	}

	public String getYP3()
	{
		return this.YP3;
	}

	public void setYP3(String YP3)
	{
		this.YP3 = YP3;
	}

	public String getYP4()
	{
		return this.YP4;
	}

	public void setYP4(String YP4)
	{
		this.YP4 = YP4;
	}

	public String getYP5()
	{
		return this.YP5;
	}

	public void setYP5(String YP5)
	{
		this.YP5 = YP5;
	}

	public String getYPhoto1()
	{
		return this.YPhoto1;
	}

	public void setYPhoto1(String YPhoto1)
	{
		this.YPhoto1 = YPhoto1;
	}

	public String getYPhoto2()
	{
		return this.YPhoto2;
	}

	public void setYPhoto2(String YPhoto2)
	{
		this.YPhoto2 = YPhoto2;
	}

	public String getYPhoto3()
	{
		return this.YPhoto3;
	}

	public void setYPhoto3(String YPhoto3)
	{
		this.YPhoto3 = YPhoto3;
	}

}