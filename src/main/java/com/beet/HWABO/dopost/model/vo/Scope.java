package com.beet.HWABO.dopost.model.vo;

public class Scope implements java.io.Serializable{
	private final static long serialVersionUID = 34535353L;
	private int currentPage;
	private int limit;
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	@Override
	public String toString() {
		return "Scope [currentPage=" + currentPage + ", limit=" + limit + "]";
	}
	public Scope(int currentPage, int limit) {
		super();
		this.currentPage = currentPage;
		this.limit = limit;
	}
	public Scope() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
