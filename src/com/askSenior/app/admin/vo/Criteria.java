package com.askSenior.app.admin.vo;

public class Criteria {

	private String type;
	private String keyword;
	private String order;
	
	public Criteria() {;}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setWay(String way) {
		this.keyword = keyword;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "Criteria [type=" + type + ", keyword=" + keyword + ", order=" + order + "]";
	}
	
	public String[] getTypes() {
		return this.type != null ? this.type.split("") : new String[] {};
	}
		
	
}
