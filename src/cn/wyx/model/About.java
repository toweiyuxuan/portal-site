package cn.wyx.model;

/**
 * About entity. @author MyEclipse Persistence Tools
 */

public class About implements java.io.Serializable
{

	// Fields

	private Integer AId;
	private String ATitle;
	private String AP1;
	private String AP2;
	private String AP3;
	private String AP4;
	private String AP5;
	private String APhoto1;
	private String APhoto2;
	private String APhoto3;

	// Constructors

	/** default constructor */
	public About()
	{
	}

	/** full constructor */
	public About(String ATitle, String AP1, String AP2, String AP3, String AP4,
			String AP5, String APhoto1, String APhoto2, String APhoto3)
	{
		this.ATitle = ATitle;
		this.AP1 = AP1;
		this.AP2 = AP2;
		this.AP3 = AP3;
		this.AP4 = AP4;
		this.AP5 = AP5;
		this.APhoto1 = APhoto1;
		this.APhoto2 = APhoto2;
		this.APhoto3 = APhoto3;
	}

	// Property accessors

	public Integer getAId()
	{
		return this.AId;
	}

	public void setAId(Integer AId)
	{
		this.AId = AId;
	}

	public String getATitle()
	{
		return this.ATitle;
	}

	public void setATitle(String ATitle)
	{
		this.ATitle = ATitle;
	}

	public String getAP1()
	{
		return this.AP1;
	}

	public void setAP1(String AP1)
	{
		this.AP1 = AP1;
	}

	public String getAP2()
	{
		return this.AP2;
	}

	public void setAP2(String AP2)
	{
		this.AP2 = AP2;
	}

	public String getAP3()
	{
		return this.AP3;
	}

	public void setAP3(String AP3)
	{
		this.AP3 = AP3;
	}

	public String getAP4()
	{
		return this.AP4;
	}

	public void setAP4(String AP4)
	{
		this.AP4 = AP4;
	}

	public String getAP5()
	{
		return this.AP5;
	}

	public void setAP5(String AP5)
	{
		this.AP5 = AP5;
	}

	public String getAPhoto1()
	{
		return this.APhoto1;
	}

	public void setAPhoto1(String APhoto1)
	{
		this.APhoto1 = APhoto1;
	}

	public String getAPhoto2()
	{
		return this.APhoto2;
	}

	public void setAPhoto2(String APhoto2)
	{
		this.APhoto2 = APhoto2;
	}

	public String getAPhoto3()
	{
		return this.APhoto3;
	}

	public void setAPhoto3(String APhoto3)
	{
		this.APhoto3 = APhoto3;
	}

}