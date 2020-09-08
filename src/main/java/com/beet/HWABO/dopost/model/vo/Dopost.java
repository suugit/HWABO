package com.beet.HWABO.dopost.model.vo;

import java.sql.Date;

public class Dopost implements java.io.Serializable{
	private static final long serialVersionUID = 4444234L;
	
	private String no;
	private String title;
	private String writer;
	private String lcontent;
	private java.sql.Date date;
	private String lpublic;
	
	public Dopost() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Dopost(String no, String title, String writer, String lcontent, Date date, String lpublic) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.lcontent = lcontent;
		this.date = date;
		this.lpublic = lpublic;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getLcontent() {
		return lcontent;
	}
	public void setLcontent(String lcontent) {
		this.lcontent = lcontent;
	}
	public java.sql.Date getDate() {
		return date;
	}
	public void setDate(java.sql.Date date) {
		this.date = date;
	}
	public String getLpublic() {
		return lpublic;
	}
	public void setLpublic(String lpublic) {
		this.lpublic = lpublic;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Dopost [no=" + no + ", title=" + title + ", writer=" + writer + ", lcontent=" + lcontent + ", date="
				+ date + ", lpublic=" + lpublic + "]";
	}
	
	
	
	
}
