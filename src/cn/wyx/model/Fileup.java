package cn.wyx.model;

import java.util.Date;

/**
 * Fileup entity. @author MyEclipse Persistence Tools
 */

public class Fileup implements java.io.Serializable
{

	// Fields

	private Integer FId;
	private String FTitle;
	private String FAword;
	private String FFile;
	private Date FDate;

	// Constructors

	/** default constructor */
	public Fileup()
	{
	}

	/** full constructor */
	public Fileup(String FTitle, String FAword, String FFile,Date FDate)
	{
		this.FTitle = FTitle;
		this.FAword = FAword;
		this.FFile = FFile;
		this.FDate = FDate;
	}

	// Property accessors

	public Integer getFId()
	{
		return this.FId;
	}

	public void setFId(Integer FId)
	{
		this.FId = FId;
	}

	public String getFTitle()
	{
		return this.FTitle;
	}

	public void setFTitle(String FTitle)
	{
		this.FTitle = FTitle;
	}

	public String getFAword()
	{
		return this.FAword;
	}

	public void setFAword(String FAword)
	{
		this.FAword = FAword;
	}

	public String getFFile()
	{
		return this.FFile;
	}

	public void setFFile(String FFile)
	{
		this.FFile = FFile;
	}

	public Date getFDate()
	{
		return FDate;
	}

	public void setFDate(Date fDate)
	{
		FDate = fDate;
	}

}